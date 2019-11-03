# CLI Controller
#  User Interface and Meu
class GoogleLib::CLI_INTERFACE

  def call
    puts "Hello!  Welcome to Google Library, please enter a book topic" .blue
    puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
        user_input
        show_authors
        show_books
        show_publisher
    end


  #gets user input in the form of a category
  def user_input
    @input = gets.strip
      if @input ==  GoogleBooks::API.search(@input)
        show_authors
        show_books
        show_publisher
      else
        puts "please enter a relevant category"
    end
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

end
