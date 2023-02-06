require_relative './book'

class BooksOptions
  attr_accessor :books

  def initialize
    @books = []
  end

  def list_all_books
    if @books.empty?
      puts 'No added book!'
    else
      @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    end
  end

  def list_all_books_with_index
    if @books.empty?
      puts 'No added book!'
    else
      @books.each_with_index { |book, index| puts "#{index}) Title: '#{book.title}', Author: #{book.author}" }
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books.push(Book.new(title, author))
    puts 'Book created successfully'
  end
end
