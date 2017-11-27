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


end
