# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid title' do
    visit new_book_path
    fill_in 'Title', with: 'Manufacturing Consent'
    fill_in 'Author', with: 'Noam Chomsky'
    fill_in 'Price', with: '18.49'
    fill_in 'Publication Date', with: '1988-03-17'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Manufacturing Consent')
  end

  scenario 'valid author' do
    visit new_book_path
    fill_in 'Title', with: 'Manufacturing Consent'
    fill_in 'Author', with: 'Noam Chomsky'
    fill_in 'Price', with: '18.49'
    fill_in 'Publication Date', with: '1988-17-03'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Noam Chomsky')
  end

  scenario 'valid price' do
    visit new_book_path
    fill_in 'Title', with: 'Manufacturing Consent'
    fill_in 'Author', with: 'Noam Chomsky'
    fill_in 'Price', with: '18.49'
    fill_in 'Publication Date', with: '1988-17-03'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('18.49')
  end

  scenario 'valid publication date' do
    visit new_book_path
    fill_in 'Title', with: 'Manufacturing Consent'
    fill_in 'Author', with: 'Noam Chomsky'
    fill_in 'Price', with: '18.49'
    fill_in 'Publication Date', with: '1988-17-03'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1988-17-03')
  end
end
