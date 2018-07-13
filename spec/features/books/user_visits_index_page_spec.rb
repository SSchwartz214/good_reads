require 'rails_helper'

describe 'user sees all books when visiting index page' do
  describe 'they visit /books' do
    it "displays a list of all books with links to that book's show page" do
      user_1 = User.create(name: "Seth")
      book_1 = Book.create(title: "50 Shades of Grey")
      book_2 = Book.create(title: "Green Eggs and Ham")

      visit books_path

      expect(page).to have_content(book_1.title)
      expect(page).to have_content(book_2.title)

      click_link("#{book_1.title}")

      expect(current_path).to eq book_path(user_1, book_1)
    end
  end
end
