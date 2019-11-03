# module
# #   class Error < StandardError; end
# #   # Your code goes here...
# end

require 'pry'
require 'colorize'
require 'google_books'

query_results = GoogleBooks::API.search('categories')
# puts "#{query_results.count}"


require_relative "./cli_application/version"
require_relative './cli_application/cli_interface'
require_relative './cli_application/reading_library'
