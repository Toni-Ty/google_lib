# CLI Controller
#  User Interface and Meu
class GoogleLib::CLI_INTERFACE

def call
  puts "Hello Everyone"
  end
end
books = GoogleBooks::API.search('Douglas Rockford')
books.each do |book|
  puts book.author
end
