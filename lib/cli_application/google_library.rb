attr_accessor :authors, :titles, :publisher

  def initialize
    @authors = authors
    @titles = titles
    @publishers = publisher
  end

  #returns book authors
  def call
    books = GoogleBooks::API.search('cooking')
    books.each do |book|
      puts book.authors
      end
    end

  #returns book titles
  def call
    books = GoogleBooks::API.search('cooking')
    books.each do |book|
      puts book.titles
      end
    end

    #returns book publishers
    def call
      books = GoogleBooks::API.search('cooking')
      books.each do |book|
        puts book.publisher
        end
      end
