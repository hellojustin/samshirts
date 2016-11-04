# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


sizes = Size.create([
  { name: '2XL' },
  { name: 'XL' },
  { name: 'L' },
  { name: 'M' },
  { name: 'S' },
  { name: 'XS' }
])

product = Product.create({
  title: 'The Essential SamCart Tee',
  description: 'Next Level 60/40 poly-cotton blended t-shirt with SamCart logo on front. Cool in the summer, freezing in the winter!',
  price: 1499
})

Sku.create([
  { product: product, color: 'Blue', size: sizes[0] },
  { product: product, color: 'Blue', size: sizes[1] },
  { product: product, color: 'Blue', size: sizes[2] },
  { product: product, color: 'Blue', size: sizes[3] },
  { product: product, color: 'Blue', size: sizes[4] },
  { product: product, color: 'Blue', size: sizes[5] },
  { product: product, color: 'Red',  size: sizes[0] },
  { product: product, color: 'Red',  size: sizes[1] },
  { product: product, color: 'Red',  size: sizes[2] },
  { product: product, color: 'Red',  size: sizes[3] },
  { product: product, color: 'Red',  size: sizes[4] },
  { product: product, color: 'Red',  size: sizes[5] },
])
