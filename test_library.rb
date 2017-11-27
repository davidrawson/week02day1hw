require "minitest/autorun"
require "minitest/rg"
require_relative ("library")


class TestLibrary < Minitest::Test

  def setup
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

  def test_list_all_books
    library = Library.new()
    assert_equal(@books, library.list_all_books)
  end

  def test_get_book_info
    library = Library.new()
    expected = @books.last()
    assert_equal(expected, library.find_book_by_title("lord_of_the_rings"))
  end

  def test_rental_details_by_title
    library = Library.new()
    expected = @books.last[:rental_details]
    assert_equal(expected, library.rental_details_by_title("lord_of_the_rings"))
  end

  def test_add_book_title
    library = Library.new()
    library.add_book_title("silmarillion")
    actual = library.list_all_books.length
    assert_equal(3, actual)
  end

  def test_change_rental_details
    library = Library.new()
    library.change_rental_details("the hobbit", "Stuart", "22/04/16")
    actual = library.rental_details_by_title("the hobbit")[:student_name]
    assert_equal("Stuart", actual)
  end
end
