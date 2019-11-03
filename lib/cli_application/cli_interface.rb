# CLI Controller
#  User Interface and Meu
class GoogleLib::CLI_INTERFACE

  @@reading_list = []


  def call
    puts "Hello!  Welcome to Google Library, please enter a book topic" .blue
    puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
        user_input
        show_authors
        show_books
        show_publisher
        save_book
  end


  #gets user input in the form of a category
  def user_input
    @input = gets.strip
    @input ==  GoogleBooks::API.search(@input)
  end

  # returns book authors
  def show_authors
    books = GoogleBooks::API.search(@input, :count => 5)
    books.each do |book|
    puts book.authors
    end
  end

  #returns book titles
  def show_books
    books = GoogleBooks::API.search(@input, :count => 5)
    books.each do |book|
    puts book.title
    end
  end

    #returns book publishers
  def show_publisher
    books = GoogleBooks::API.search(@input, :count => 5)
    books.each do |book|
    puts book.publisher
    end
  end

  #save book
  def save_book
    puts "If you would like to save a book to your reading list, please type the name of the book." .blue
  end

end
