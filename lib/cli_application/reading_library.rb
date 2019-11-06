class GoogleLib::Google_library
#
#   attr_accessor :authors, :titles, :publisher
#
#   @@all_books = []
#
#
#   def initialize
#     @authors = authors
#     @titles = titles
#     @publishers = publisher
#     @@all_books << self
#   end
#
#   #all saved books
#   def self.all
#     @@all_books
#   end
#
#
# end


    @@count = 0
    @@instances = []

    def initialize(options)
           @@count += 1
           @@instances << self
    end

    def self.all
        @@instances
    end

    def self.count
        @@count
    end

#     def self.count
#         ObjectSpace.each_object(self).count
#     end
#
#
#     def self.all
#         ObjectSpace.each_object(self).to_a
#     end
# end
end
