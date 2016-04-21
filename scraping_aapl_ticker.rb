require 'date'
require 'yahoo_finance'
require 'colorize'
symbl = ARGV[0]

stock = YahooFinance::Stock.new([symbl], [:bid, :company_name, :annualized_gain, :day_value_change, :previous_close, :open, :day_value_change, :symbol, :price_paid, :earnings_per_share, :annualized_gain, :change_in_percent, :day_high, :day_low, :change_in_percent])

	results = stock.fetch
	aapl_name = results[symbl][:company_name]
	aapl_bid = results[symbl][:bid]
	aapl_preclos = results[symbl][:previous_close]
	aapl_open = results[symbl][:open]
	aapl_sbyl = results[symbl][:symbol]
	aapl_high = results[symbl][:day_high]
	aapl_low = results[symbl][:day_low]
	aapl_chgprct = results[symbl][:change_in_percent]
	aapl_day_valchg = results[symbl][:day_value_change]
	aapl_ann_gain = results[symbl][:annualized_gain]

puts aapl_name.center(30).white.on_black
puts "Current Price".center(30)
puts aapl_bid.to_s.center(30).green
puts "Previous Close".center(30)
puts aapl_preclos.to_s.center(30)
puts "Opening".center(30)
puts aapl_open.to_s.center(30)
puts "Daily High".center(30)
puts aapl_high.to_s.center(30)
puts "Daily Low".center(30)
puts aapl_low.to_s.center(30)
puts "Daily % Change".center(30)
puts aapl_chgprct.to_s.center(30).green
puts "Daily Value Change".center(30)
puts aapl_day_valchg.to_s.center(30)
puts "Annualized Gain".center(30)
puts aapl_ann_gain.to_s.center(30)
puts aapl_sbyl.center(30).white.on_black
