# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
p "Zacinam seed"
if User.all.blank?
  User.create(email: 'padrta.jan@spssol.cz', password: 'abcd1234', admin: true)
  User.create(email: 'pavlu.tomas@spssol.cz', password: 'abcd1234', admin: true)
  User.create(email: 'vitek.zdenek@spssol.cz', password: 'abcd1234', admin: true)
  User.create(email: 'tomasek.jiri@spssol.cz', password: 'abcd1234', admin: true)
  User.create(email: 'balek.borek@spssol.cz', password: 'abcd1234', admin: true)
  User.create(email: 'navsteva@spssol.cz', password: 'abcd1234', admin: false)
end

if Category.all.blank?
  cat_tri = Category.create(name: 'Trička')
  cat_mik = Category.create(name: 'Mikiny')
  cat_bot = Category.create(name: 'Boty')
  cat_dop = Category.create(name: 'Doplňky')
end

if Product.all.blank?
  Product.create(name: 'Mikina s kapucí S', description: 'Klasická mikina s kapucí.', price: 100.0, category: cat_mik)
  Product.create(name: 'Mikina s kapucí M', description: 'Klasická mikina s kapucí.', price: 110.0, category: cat_mik)
  Product.create(name: 'Mikina s kapucí L', description: 'Klasická mikina s kapucí.', price: 120.0, category: cat_mik)
  Product.create(name: 'Mikina s kapucí XL', description: 'Klasická mikina s kapucí.', price: 130.0, category: cat_mik)
  Product.create(name: 'Mikina S', description: 'Klasická mikina akorát bez kapuce.', price: 100.0, category: cat_mik)
  Product.create(name: 'Mikina M', description: 'Klasická mikina akorát bez kapuce.', price: 110.0, category: cat_mik)
  Product.create(name: 'Mikina L', description: 'Klasická mikina akorát bez kapuce.', price: 120.0, category: cat_mik)
  Product.create(name: 'Mikina XL', description: 'Klasická mikina akorát bez kapuce.', price: 130.0, category: cat_mik)

  Product.create(name: 'Tričko pánské S', description: 'Klasické pánské tričko s krátkým rukávem.', price: 200.0, category: cat_tri)
  Product.create(name: 'Tričko pánské M', description: 'Klasické pánské tričko s krátkým rukávem.', price: 210.0, category: cat_tri)
  Product.create(name: 'Tričko pánské L', description: 'Klasické pánské tričko s krátkým rukávem.', price: 220.0, category: cat_tri)
  Product.create(name: 'Tričko pánské XL', description: 'Klasické pánské tričko s krátkým rukávem.', price: 230.0, category: cat_tri)
  Product.create(name: 'Tričko dámské S', description: 'Klasické dámské tričko s krátkým rukávem.', price: 200.0, category: cat_tri)
  Product.create(name: 'Tričko dámské M', description: 'Klasické dámské tričko s krátkým rukávem.', price: 210.0, category: cat_tri)
  Product.create(name: 'Tričko dámské L', description: 'Klasické dámské tričko s krátkým rukávem.', price: 220.0, category: cat_tri)
  Product.create(name: 'Tričko dámské XL', description: 'Klasické dámské tričko s krátkým rukávem.', price: 230.0, category: cat_tri)

  Product.create(name: 'Tenisky pánské S', description: 'Klasické pánské tenisky se šněrováním.', price: 300.0, category: cat_bot)
  Product.create(name: 'Tenisky pánské M', description: 'Klasické pánské tenisky se šněrováním.', price: 310.0, category: cat_bot)
  Product.create(name: 'Tenisky pánské L', description: 'Klasické pánské tenisky se šněrováním.', price: 320.0, category: cat_bot)
  Product.create(name: 'Tenisky pánské XL', description: 'Klasické pánské tenisky se šněrováním.', price: 330.0, category: cat_bot)
  Product.create(name: 'Tenisky dámské S', description: 'Klasické dámské tenisky se šněrováním.', price: 300.0, category: cat_bot)
  Product.create(name: 'Tenisky dámské M', description: 'Klasické dámské tenisky se šněrováním.', price: 310.0, category: cat_bot)
  Product.create(name: 'Tenisky dámské L', description: 'Klasické dámské tenisky se šněrováním.', price: 320.0, category: cat_bot)
  Product.create(name: 'Tenisky dámské XL', description: 'Klasické dámské tenisky se šněrováním.', price: 330.0, category: cat_bot)

  Product.create(name: 'Doplněk první', description: 'nenapadá mě, co si tady pod tím představit.', price: 30.0, category: cat_dop)
  Product.create(name: 'Doplněk druhý', description: 'nenapadá mě, co si tady pod tím představit.', price: 40.0, category: cat_dop)
  Product.create(name: 'Doplněk třetí', description: 'nenapadá mě, co si tady pod tím představit.', price: 50.0, category: cat_dop)
end

if Stock.all.blank?;
  for p in Product.all do
    Stock.create(product: p, quantity: rand(29)*10)
  end
end
p "konec seedu"