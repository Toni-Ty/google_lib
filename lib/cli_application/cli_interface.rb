# CLI Controller
#  User Interface and Meu
class GoogleLib::CLI_INTERFACE

attr_accessor :author

def initialize
  @author = author
end

def call
  books = GoogleBooks::API.search('Edith Wharton')
  binding.pry
  books.each do |book|
    puts book
  # puts "Hello Everyone"
    end
  end
end
