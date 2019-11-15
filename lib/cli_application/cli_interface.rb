class GoogleLib::CLI_INTERFACE


  def call
    puts "Hello!  Welcome to Google Lib, please enter a book topic" .blue
    puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  " .blue
        input = nil
        while @input != "exit"
        get_user_input(input)
        search_google_books(input)
        save_book_title
        reading_list_options
      end
  end

  def get_user_input(input)
     @input = gets.strip
  end

  #returns 5 books only if books contain title, author, and publisher
  def search_google_books(input)
    @books =  GoogleBooks::API.search(@input, :count => 5)
    @books.each do |book|
      if !(book.title.nil? || book.authors.nil? || book.publisher.nil?)
        puts book.title, book.authors, book.publisher, "\n"
    end
  end


  def save_book_title
    puts "If you would like to save a book to your reading list, please type the title of the book you'd like to save." .blue
      get_user_input(@input)
      book_input = @input
        if book_to_save = @books.find{|book| book.title == book_input }
          GoogleLib::Google_library.all << book_input
        else
          puts "Please enter a valid title"
        save_book_title
      end
    end
  end

  def reading_list_options
    puts "Would you like to enter a new book topic to search?" .blue
    puts "If so, please type [Y]...Or type [see list] for your reading list...Or type [exit] to leave" .blue
    get_user_input(@input)
		  if @input == "Y" || @input == "y"
			  call
      elsif @input == "see list"
        puts GoogleLib::Google_library.all
        reading_list_options
      elsif @input == "exit"
  			puts "Have a great day!".magenta
  			exit
      else
        puts "I'm sorry please enter a valid response".blue
        reading_list_options
      end
    end
  end
