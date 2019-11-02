# CLI Controller
#  User Interface and Meu
class GoogleLib::CLI_INTERFACE

attr_accessor :authors

def initialize
  @authors = authors
end

def call
  books = GoogleBooks::API.search('cooking')
  books.each do |book|
    puts book.authors
    end
  end
end
