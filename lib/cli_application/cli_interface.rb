class GoogleLib::CLI_INTERFACE

  def call
    puts "Hello!  Welcome to Google Lib, please enter a book topic" .blue
    puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  " .blue
        get_user_input
        search_google_books
        show_user_selection
        save_book_title
        reading_list_options
  end

  def get_user_input
    @input = gets.strip
  end

  def search_google_books
  # def get_books
    @books =  GoogleBooks::API.search(@input, :count => 5)
  end

  #returns user book selection
  # def show_all_books
  def show_user_selection
    @books.each  { |book| puts "#{book.title}, #{book.authors}, #{book.publisher}"}
    end
  end

  #gets book titles from user
  # def get_user_selection
  def save_book_title
    puts "If you would like to save a book to your reading list, please type the title of the book you'd like to save." .blue
    book_input = gets.strip
    @books.each do |book|
      if book.title == book_input
        saved_book = book_input
        @all_the_books = GoogleLib::Google_library.all
        @all_the_books << saved_book
      end
    end
  end

  #options for additional books, reading list, and exit
  def reading_list_options
    puts "Would you like to enter a new book topic to search?" .blue
    puts "If so, please type [Y]...Or type [see list] for your reading list...Or type [exit] to leave" .blue
    get_user_input
		  if @input == "Y"
			  call
      elsif @input == "see list"
        puts @all_the_books
        reading_list_options
      else
  			puts "Have a great day!".magenta
  			exit
		end
end
