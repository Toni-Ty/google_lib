# module
# #   class Error < StandardError; end
# #   # Your code goes here...
# end

require 'pry'
require 'colorize'
require 'google_books'

@input = GoogleBooks::API.search('categories')

#take out reading Library

require_relative "./cli_application/version"
require_relative './cli_application/cli_interface'
require_relative './cli_application/reading_library'
