require 'date'

module Binance
  module Client
    class REST
      # Generate a timestamp in milliseconds and append to query string
      TimestampRequestMiddleware = Struct.new(:app, :recv_window) do
        def call(env)
          env.url.query = REST.add_query_param(
            env.url.query, 'timestamp', DateTime.now.strftime('%Q')
          )

          # add optional request TTL
          # https://binance-docs.github.io/apidocs/spot/en/#signed-trade-user_data-and-margin-endpoint-security
          env.url.query = REST.add_query_param(
            env.url.query, 'recvWindow', recv_window
          ) if (100..60000).include?(recv_window.to_i)

          app.call env
        end
      end
    end
  end
end
