# class RubyStock
# 	require 'net/http'
#     def RubyStock::getStocks(*symbols)
#         Hash[*(symbols.collect{|symbol|[symbol,Hash[\
#         *(Net::HTTP.get('quote.yahoo.com','/d?f=nl1&s='+symbol).chop\
#         .split(',').unshift("Name").insert(2,"Price"))]];}.flatten)];
#     end
# end
#
# puts RubyStock::getStocks("MSFT", "IBM", "GOOG").inspect

require 'yahoo_finance'
    require 'date'

		require 'yahoo_finance'

	     stock = YahooFinance::Stock.new(['AAPL'], [:market_cap, :bid, :brokers_count, :upgrades_downgrades_history])
	     # look at available fields you could fetch with this library
	     stock.available_fields

	     stock.add_field(:last_trade_price_only)

	     results = stock.fetch
	     aapl_bid = results["AAPL"]"$"[:bid]

			puts aapl_bid
