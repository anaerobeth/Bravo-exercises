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


list_of_categories =
[
  {
    description: 'adventure',
    created_at: '2012,2,3',
    updated_at: '2013,2,3',
  },
  {
    description: 'drama',
    created_at: '2002,2,3',
    updated_at: '2010,2,3',
  }
]

list_of_categories.each do |attributes|
  category = Category.where({
    description: attributes[:description],
    created_at: attributes[:created_at],
    updated_at: attributes[:updated_at],
  }).first

  if category.nil?
    category = Category.new(attributes)
  else
    category.assign_attributes = attributes
  end

  category.save!
end


# list_of_categorizations = [
#   {
#     book_id: 1
#     category_id: 1
# },
#   {
#     book_id: 1
#     category_id: 2
# },
#   {
#     book_id: 2
#     category_id: 3
# },
# ]
#     book_id:
#     category_id:

#   end

