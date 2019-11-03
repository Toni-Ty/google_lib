# CLI Controller
#  User Interface and Meu
class GoogleLib::CLI_INTERFACE

  def call
    show_authors
    show_books
    show_publisher
  end

  #returns book authors
  def show_authors
    books = GoogleBooks::API.search('salsa', :count => 5)
    books.each do |book|
      puts book.authors
      end
    end

  #returns book titles
  def show_books
    books = GoogleBooks::API.search('salsa', :count => 5)
    books.each do |book|
      puts book.title
      end
    end

    #returns book publishers
    def show_publisher
      books = GoogleBooks::API.search('salsa', :count => 5)
      books.each do |book|
        puts book.publisher
    end
  end

end
