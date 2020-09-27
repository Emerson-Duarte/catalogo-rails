module BooksHelper
  def max_value
    Book.order(:value).last
  end

  def max_pages
    Book.order(:page).last
  end

  def last_book_created
    Book.order(:created_at).last
  end

  def count_books
    Book.count(:created_at)
  end

  def sum_of_pages
    Book.sum(:page)
  end

  def sum_of_value
    Book.sum(:value)
  end

  def most_used_genre
    Genre.left_outer_joins(:books).select('genres.*, COUNT(1) AS book_count').group('genre_id').order('book_count').last
  end
end
