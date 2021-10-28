# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#User
User.create(first_name: 'Peter', last_name: 'Parker', email: 'peterparker@gmail.com', phone: '0491 570 156', dob: 20010810)
User.create(first_name: 'Tony', last_name: 'Stark', email: 'tonystark@yahoo.com', phone: '0491 570 006', dob: 19700529)
User.create(first_name: 'Steve', last_name: 'Rogers', email: 'steverogers@hotmail.com', phone: '0491 570 313', dob: 1918064)

#Store
Store.create(name: 'Pact', description: 'Patagonia, one of the earliest defenders of environmental ethics in the industry, was also one of the first to use recycled materials and switch to organic cotton.')
Store.create(name: 'Patagonia', description: 'Pact is pretty obsessed with making super-soft clothes that also make the world a better place.')
Store.create(name: 'Kotn', description: 'From its farms to its factories, Kotn creates all of its garments in a fair and safe environment, and is even helping suppliers make the switch to organic within the next five years.')

#Item
s1 = Store.find_by id:1
    # sub_category: jeans
    new_item = s1.items.build(category: 'clothes', sub_category: 'jeans', stock: 4, description: 'blue jeans', size: 'S', gender: 'M')
    new_item.save


    # s1.items << new_item
    
    # s1.items.create(category: 'clothes', sub_category: 'jeans', stock: 6, description:'blue jeans', size: 'M', gender: 'M')

    # s1.items.create(category: 'clothes', sub_category: 'jeans', stock: 4, description:'blue jeans', size: 'S', gender: 'M')
    # s1.items.create(category: 'clothes', sub_category: 'jeans', stock: 6, description:'blue jeans', size: 'M', gender: 'M')
    # s2.items.create(category: 'clothes', sub_category: 'jeans', stock: 5, description:'blue jeans', size: 'L', gender: 'M')
    # s2.items.create(category: 'clothes', sub_category: 'jeans', stock: 4, description:'blue jeans', size: 'S', gender: 'F')
    # s3.items.create(category: 'clothes', sub_category: 'jeans', stock: 6, description:'blue jeans', size: 'M', gender: 'F')
    # s3.items.create(category: 'clothes', sub_category: 'jeans', stock: 5, description:'blue jeans', size: 'L', gender: 'F')
    # #sub_category: shirt
    # s2.items.create(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'S', gender: 'M')
    # s2.items.create(category: 'clothes', sub_category: 'shirt', stock: 6, description:'green shirt', size: 'M', gender: 'M')
    # s3.items.create(category: 'clothes', sub_category: 'shirt', stock: 5, description:'green shirt', size: 'L', gender: 'M')
    # s3.items.create(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'S', gender: 'F')
    # s1.items.create(category: 'clothes', sub_category: 'shirt', stock: 6, description:'green shirt', size: 'M', gender: 'F')
    # s1.items.create(category: 'clothes', sub_category: 'shirt', stock: 5, description:'green shirt', size: 'L', gender: 'F')
    # # #sub_category: jacket
    # s3.items.create(category: 'clothes', sub_category: 'jacket', stock: 4, description:'suede jacket', size: 'S', gender: 'M')
    # s3.items.create(category: 'clothes', sub_category: 'jacket', stock: 6, description:'suede jacket', size: 'M', gender: 'M')
    # s1.items.create(category: 'clothes', sub_category: 'jacket', stock: 5, description:'suede jacket', size: 'L', gender: 'M')
    # s1.items.create(category: 'clothes', sub_category: 'jacket', stock: 4, description:'suede jacket', size: 'S', gender: 'F')
    # s2.items.create(category: 'clothes', sub_category: 'jacket', stock: 6, description:'suede jacket', size: 'M', gender: 'F')
    # s2.items.create(category: 'clothes', sub_category: 'jacket', stock: 5, description:'suede jacket', size: 'L', gender: 'F')

#Address
u1 = User.find_by id:1
u2 = User.find_by id:2
u3 = User.find_by id:3
address_one = u1.build_address(street_address:'26 Martens Place', city: 'Tingalpa', state: 'QLD', postcode: 4173, address_type: 'home')
address_one.save
# u2.address.create(street_address:'57 Bayview Close', city: 'Tieri', state: 'QLD', postcode: 4709, address_type: 'home')
# u3.address.create(street_address:'35 Raglan Street', city: 'Tingoora', state: 'VIC', postcode: 3507, address_type: 'home')