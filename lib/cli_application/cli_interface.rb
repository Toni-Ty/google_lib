class GoogleLib::CLI_INTERFACE #  User Interface and Meu

  def call
    puts "Hello!  Welcome to Google Lib, please enter a book topic" .blue
    puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
        user_input
        get_books
        show_all_books
        get_user_selection
        reading_list_options
  end

  #gets user input in the form of a category
  def user_input
    @input = gets.strip
  end

  #loads google library
  def get_books
    @books =  GoogleBooks::API.search(@input, :count => 5)
  end

  #returns user book selection
  def show_all_books
    @books.each  { |book| puts "#{book.title}, #{book.authors}, #{book.publisher}"}
  end
end

  #gets book titles from user
    def get_user_selection
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

  #option for additional books, reading list, and exit
  def reading_list_options
    # puts @push_books
    puts "Would you like to enter a new book topic to search?" .blue
    puts "If so, please type [Y]...Or type [see list] for your reading list...Or type [exit] to leave" .blue
    user_input
		  if @input == "Y"
			  call
      elsif @input == "see list"
        puts @all_the_books
        call
      else
  			puts "Have a great day!".magenta
  			exit
			end
		end
