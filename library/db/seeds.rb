# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
list_of_books =
[
  {
    title: 'Moby Dick',
    created_at: '2012,2,3',
    updated_at: '2013,2,3',
    author: 'Herman Melville',
    favorite: true
  },
  {
    title: 'Jude the Obscure',
    created_at: '2002,2,3',
    updated_at: '2010,2,3',
    author: 'Thomas Hardy',
    favorite: true
  }
]
list_of_books.each do |attributes|
  book = Book.where({
    title: attributes[:title],
    created_at: attributes[:created_at],
    updated_at: attributes[:updated_at],
    author: attributes[:author],
    favorite: attributes[:favorite]
  }).first

  if book.nil?
    book = Book.new(attributes)
  else
    book.assign_attributes = attributes
  end

  book.save!
end