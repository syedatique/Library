class Person


  attr_reader :name, :books


  def initialize(options={})
    @name = options[:name]
    @books = {}
  end

  def pretty_string
    "#{name} has #{books.size} book#{"s" unless books.size ==1} borrowed from the library."
  end

  def borrow(book)
    #binding.pry
    @books[book.title] = book
  end

  def return(book_title)
    #@books.push(book_title)
    @books.delete(book_title)
  end

  def check_person_book_record
    if books.empty?
      "Nobody borrowed any books yet!"
    else
      book = books.map { |title, book_value| title }.join
      puts "#{name} has borrowed #{book} from the library."
    end
  end


end