class GoogleLib::Google_library

  attr_accessor :authors, :titles, :publisher

  @@all_books = []


  def initialize
    @authors = authors
    @titles = titles
    @publishers = publisher
    @@all_books << self
  end

  #returns book authors
  def show_authors
    books = GoogleBooks::API.search('cooking')
    books.each do |book|
      puts book.authors
      end
    end

  #returns book titles
  def show_books
    books = GoogleBooks::API.search('cooking')
    books.each do |book|
      puts book.titles
      end
    end

    #returns book publishers
    def show_publisher
      books = GoogleBooks::API.search('cooking')
      books.each do |book|
        puts book.publisher
        end
      end
