class Library

  def initialize
    @books = {
      title: "the hobbit",
      rental_details: {
      student_name: "Dave",
      date: "01/04/16"
      }
    },
    {
      title: "lord_of_the_rings",
      rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
      }
    }

  end

  def list_all_books
    return @books
  end

  def find_book_by_title(book_title)
    for book in @books
      if book[:title] == book_title
        return book
      end
    end
  end

  def rental_details_by_title(book_title)
    for book in @books
      if book[:title] == book_title
        return book[:rental_details]
      end
    end
  end

  def add_book_title(book_title)
    @books.push(title: book_title,
    rental_details: {
    student_name: "",
    date: ""})
  end

  def change_rental_details(book_title, student_name, due_date)
    for book in @books
      if book[:title] == book_title
        book[:rental_details][:student_name] = student_name
        book[:rental_details][:date] = due_date
      end
    end

  end

end
