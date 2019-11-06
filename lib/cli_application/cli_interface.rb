# CLI Controller
#  User Interface and Meu
class GoogleLib::CLI_INTERFACE
#   @@reading_list = []
#
#   def initialize
#     @@reading_list << self
# end
#



  def call
    puts "Hello!  Welcome to Google Library, please enter a book topic" .blue
    puts "      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ".blue
        user_input
        get_books
        show_all_books
        get_user_selection
        print_reading_list
  end

  # def self.all
  #   @@reading_list
  # end

  #gets user input in the form of a category
  def user_input
    @input = gets.strip
  end

  #loads google library
  def get_books
    @books =  GoogleBooks::API.search(@input, :count => 5)
  end

  #returns user input of book selection
  def show_all_books
    @books.each  { |book| puts "#{book.title}, #{book.authors}, #{book.publisher}"}
  end
end

  #gets book title from user
    def get_user_selection
      # @push_books = []
      puts "If you would like to save a book to your reading list, please type the title of the book you'd like to save." .blue
      book_input = gets.strip
      # saved_book = @books.find {|book| book.title == book_input }
      @books.each do |book|
        if book.title == book_input
         saved_book = book_input
         @all_the_books = GoogleLib::Google_library.all
         @all_the_books << saved_book
        #  @push_books << saved_book
      end
       end

end
  def invalid_response
    puts "Sorry that's an invalid response. Please try again" .blue
    puts ""
    call
  end

  #prints reading list
  def print_reading_list
    # puts @push_books
    puts "Would you like to enter a new book topic to search?" .blue
    puts "If so, please type [Y]...Or type [exit] to leave" .blue
    user_input
		if @input == "Y"
			call
    elsif @input == "see books"
      puts @all_the_books

		# else @input == "exit"
    else
			puts "Have a great day!".magenta
			exit
				end
			end


# end
# end
    # binding.pry

#   def reset_reading_list
#     @push_books.clear
#   end
