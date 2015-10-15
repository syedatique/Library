def  create_book(library)
  print "Title: "
  title = gets.chomp

  print "Genre: "
  genre = gets.chomp
  
  book = Book.new(title: title, genre: genre)
  #binding.pry

  library.add_book(book)
  
end

def  create_person(library)
 print "Name:  "
 name = gets.chomp

 person = Person.new(name: name)

 library.add_person(person)
end

def list_people(library)
  puts library.list_people
end


def list_books(library)
  puts "This is the list:\n"
  puts "#{library.list_books}"
  #puts "this is the list: #{library.list_books}"
end


def lend_book(library)
#puts "This is the list of the books: #{library.list_books}"
puts library.list_books
puts
print "which book you want to lend (by name): "
book_title = gets.chomp
puts

puts library.list_people
print "which person is going to borrow it (by name): "
person_name = gets.chomp

library.lend(person_name, book_title)
end

def return_book(library)
  puts library.list_books
  puts
  print "which book you want to return (by name): "
  book_title = gets.chomp
  puts
  puts library.list_people
  print "which person is going to return it (by name): "
  person_name = gets.chomp

  library.return(person_name, book_title)  
end


def menu
  puts "clear"
  puts "*** Hard copy rental - Codeclan library****"

  puts
  puts
  puts "1. Create Book"
  puts "2. Create Person"
  puts "3. List all Books"
  puts "4. List all People"
  puts "5. Lend Book"
  puts "6. Return Book"
  puts "7. List Borrowed Books"
  puts 

  puts "0. Quit"

  puts
  print "..>"
  gets.to_f
end



def list_borrowed_books(library)

  library.list_borrowed_books

end
