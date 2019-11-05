# CLI Controller
#  User Interface and Meu
class GoogleLib::CLI_INTERFACE

  @@reading_list = []


  def call
    puts "Hello!  Welcome to Google Library, please enter a book topic" .blue
    puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
        user_input
        get_books
        show_all_books
        #  get user input for book that they want (ie. "2")
        #  save that book to their reading list


        # show_authors
        # show_books
        # show_publisher
        save_book
  end

  #gets user input in the form of a category
  def user_input
    @input = gets.strip
  end

  #loads google library
  def get_books
    @books =  GoogleBooks::API.search(@input, :count => 5)
  end

    def show_all_books
      count = 1
      @books.each do |book|
      puts "#{count}. #{book.title}, #{book.authors}, #{book.isbn}"
      count += 1
      end
    end

  # returns book authors
  def show_authors
    # books = GoogleBooks::API.search(@input, :count => 5)
    @books.each do |book|
    puts book.authors
    end
  end

  #returns book titles
  def show_books
    @books.each do |book|
    puts book.title
    end
  end

    #returns book publishers
  def show_publisher
    @books.each do |book|
    puts book.publisher
    end
  end

  #save book
  def save_book
    puts "If you would like to save a book to your reading list, please type the number of the book you'd like to save to your reading list."
    # grab the user input "2
    book_input = gets.strip # book_input is the reading list book id
    book_to_save = @books.find{|book| book.isbn == book_input }
    binding.pry
    # book_to_save =  Google_library::Readinglist.find_by_id()
    # book (that user wants to save) = @books[1]
    # @@reading_list << book
    # puts "reading list is #{@@reading_list}"
  end

end
