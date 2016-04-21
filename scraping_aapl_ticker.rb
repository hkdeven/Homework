require 'date'
require 'yahoo_finance'
require 'colorize'
symbl = ARGV[0]

stock = YahooFinance::Stock.new([symbl], [:bid, :company_name, :annualized_gain, :day_value_change, :previous_close, :open, :day_value_change])

	results = stock.fetch
	aapl_name = results[symbl][:company_name]
	aapl_bid = results[symbl][:bid]
	aapl_preclos = results[symbl][:previous_close]
	aapl_open = results[symbl][:open]
	aapl_day_valchg = results[symbl][:day_value_change]
	aapl_ann_gain = results[symbl][:annualized_gain]

puts aapl_name.to_s.center(30).white.on_black
puts "Current Price".center(30)
puts aapl_bid.to_s.center(30).green
puts "Previous Close".center(30)
puts aapl_preclos.to_s.center(30)
puts "Opening".center(30)
puts aapl_open.to_s.center(30)
