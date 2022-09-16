# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book with title', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book with author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'Huy Dang'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Huy Dang')
  end
end

RSpec.describe 'Creating a book with price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: '100'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('100')
  end
end

RSpec.describe 'Creating a book with date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end