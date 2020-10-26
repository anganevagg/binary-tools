#!/bin/ruby

# Decimal to binary application example

require 'optparse'

options={}

OptionParser.new do |opts|
  opts.banner = "usage test.rb [option] num\n-b: decimal to binary\n-d: binary to decimal"
  opts.on('-h'){ puts opts.banner }
  opts.on('-b string', String){|binary| puts binary.to_i.to_s(2)}
  opts.on('-d string', String){|decimal| puts decimal.to_i(2)}
end.parse!(into:options)
