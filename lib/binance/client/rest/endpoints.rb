module Binance
  module Client
    class REST
      ENDPOINTS = {
        # Public API Endpoints
        ping:              'v3/ping',
        time:              'v3/time',
        exchange_info:     'v3/exchangeInfo',
        depth:             'v3/depth',
        trades:            'v3/trades',
        historical_trades: 'v3/historicalTrades',
        agg_trades:        'v3/aggTrades',
        klines:            'v3/klines',
        twenty_four_hour:  'v3/ticker/24hr',
        price:             'v3/ticker/price',
        book_ticker:       'v3/ticker/bookTicker',
        average_price:     'v3/avgPrice',

        # Account API Endpoints
        order:            'v3/order',
        test_order:       'v3/order/test',
        open_orders:      'v3/openOrders',
        all_orders:       'v3/allOrders',
        account:          'v3/account',
        my_trades:        'v3/myTrades',
        user_data_stream: 'v3/userDataStream',
        coin_detail:      'v1/capital/config/getall',

        # Savings Endpoints
        lending_account:  'v1/lending/union/account',

        # Withdraw API Endpoints
        withdraw:               'v1/capital/withdraw/apply',
        deposit_history:        'v1/capital/deposit/hisrec',
        withdraw_history:       'v1/capital/withdraw/history',
        deposit_address:        'v1/capital/deposit/address',
        account_status:         'v1/account/status',
        system_status:          'v1/system/status',
        asset_detail:           'v1/asset/assetDetail',
        dust_log:               'v1/asset/dribblet'
      }.freeze
    end
  end
end
