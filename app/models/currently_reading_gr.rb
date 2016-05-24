class CurrentlyReadingGr < ActiveRecord::Base

	def initialize
		client = Goodreads::Client.new()
		read_shelf = client.shelf(28435789, "read")
		currently_reading_shelf = client.shelf(28435789, "currently-reading")

		currently_reading_shelf_books = currently_reading_shelf.books
		for book in currently_reading_shelf_books
			book_title = book.book.title
			book_author = book.book.authors.author.name
			book_img_url = book.book.image_url

			new_book = CurrentlyReadingGr.create(title: book_title, book_author: book_author, book_image: book_img_url)
		end
	end
end
