require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'Manufacturing Consent',
                        author: 'Noam Chomsky',
                        price: "18.49",
                        publicationDate: '1988-03-17')
  end
  #Title
  it 'is valid with valid title' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  #Author
  it 'is valid with valid author' do
    expect(subject).to be_valid
  end

  it 'is not valid without a author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  #Price
  it 'is valid with valid price' do
    expect(subject).to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  #PublicationDate
  it 'is valid with valid publication date' do
    expect(subject).to be_valid
  end

  it 'is not valid without a publication date' do
    subject.publicationDate = nil
    expect(subject).not_to be_valid
  end

end
