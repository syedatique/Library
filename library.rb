class Library

  attr_reader :name, :books, :people

  def initialize(options = {})
    @name = options[:name]
    @books = {}
    @people = {}

  end

  def add_book(book)
    books[book.title] = book
  end

  def add_person(person)
    people[person.name] = person
  end

  def list_people
    if people.empty?
      "billy no mates"
    else 
      people.map {|key, person| person.pretty_string }.join("\n")
    end
  end

  def list_books
    if books.empty?
      "Soz, no books here"
    else
      book_titles = books.map {|key, book| book.pretty_string}.join("\n")
    end
    #book_titles.join('\n')#"Book title is #{book.title} and genre is #{book.genre}"
  end

  def lend(person_name, book_title)
    person = people[person_name]
    book = books.delete(book_title)
    person.borrow(book)
  end

  def return(person_name, book_title)
    if person = people[person_name]
      if books[book_title] = person.return(book_title)
         puts "#{book_title} returned to the Library successfully."
      else
        "Invalid book name"
      end
    else
      "invalid person name"
    end
  end


  def list_borrowed_books
      people.map {|name, person| person.check_person_book_record }
  end

end