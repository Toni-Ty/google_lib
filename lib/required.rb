require 'pry'
require 'colorize'
require 'google_books'

@input = GoogleBooks::API.search('categories')


require_relative "./cli_application/version"
require_relative './cli_application/cli_interface'
require_relative './cli_application/reading_library'
