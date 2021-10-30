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
s2 = Store.find_by id:2
s3 = Store.find_by id:3

    # sub_category: jeans
    new_item1s1ijeans = s1.items.build(category: 'clothes', sub_category: 'jeans', stock: 4, description: 'blue jeans', size: 'S', gender: 'M')
    new_item1s1ijeans.save
    new_item1s2ijeans = s1.items.build(category: 'clothes', sub_category: 'jeans', stock: 6, description:'blue jeans', size: 'M', gender: 'F')
    new_item1s2ijeans.save
    new_item1s3ijeans = s1.items.build(category: 'clothes', sub_category: 'jeans', stock: 6, description:'blue jeans', size: 'L', gender: 'M')
    new_item1s3ijeans.save

    new_item2s1ijeans = s2.items.build(category: 'clothes', sub_category: 'jeans', stock: 4, description: 'blue jeans', size: 'S', gender: 'F')
    new_item2s1ijeans.save
    new_item2s2ijeans = s2.items.build(category: 'clothes', sub_category: 'jeans', stock: 6, description:'blue jeans', size: 'M', gender: 'F')
    new_item2s2ijeans.save
    new_item2s3ijeans = s2.items.build(category: 'clothes', sub_category: 'jeans', stock: 6, description:'blue jeans', size: 'L', gender: 'M')
    new_item2s3ijeans.save

    new_item3s1ijeans = s3.items.build(category: 'clothes', sub_category: 'jeans', stock: 4, description: 'blue jeans', size: 'S', gender: 'M')
    new_item3s1ijeans.save
    new_item3s2ijeans = s3.items.build(category: 'clothes', sub_category: 'jeans', stock: 6, description:'blue jeans', size: 'M', gender: 'M')
    new_item3s2ijeans.save
    new_item3s3ijeans = s3.items.build(category: 'clothes', sub_category: 'jeans', stock: 6, description:'blue jeans', size: 'L', gender: 'F')
    new_item3s3ijeans.save
    
    # #sub_category: shirt
    new_item1s1ishirt = s1.items.build(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'S', gender: 'F')
    new_item1s1ishirt.save
    new_item1s2ishirt = s1.items.build(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'M', gender: 'F')
    new_item1s2ishirt.save
    new_item1s3ishirt = s1.items.build(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'L', gender: 'M')
    new_item1s3ishirt.save

    new_item2s1ishirt = s2.items.build(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'S', gender: 'F')
    new_item2s1ishirt.save
    new_item2s2ishirt = s2.items.build(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'M', gender: 'M')
    new_item2s2ishirt.save
    new_item2s3ishirt = s2.items.build(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'L', gender: 'F')
    new_item2s3ishirt.save

    new_item3s1ishirt = s3.items.build(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'S', gender: 'M')
    new_item3s1ishirt.save
    new_item3s2ishirt = s3.items.build(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'M', gender: 'F')
    new_item3s2ishirt.save
    new_item3s3ishirt = s3.items.build(category: 'clothes', sub_category: 'shirt', stock: 4, description:'green shirt', size: 'L', gender: 'M')
    new_item3s3ishirt.save

    # # #sub_category: jacket
    new_item1s1ijacket = s1.items.build(category: 'clothes', sub_category: 'jacket', stock: 4, description:'suede jacket', size: 'S', gender: 'F')
    new_item1s1ijacket.save
    new_item1s2ijacket = s1.items.build(category: 'clothes', sub_category: 'jacket', stock: 4, description:'suede jacket', size: 'M', gender: 'F')
    new_item1s2ijacket.save
    new_item1s3ijacket = s1.items.build(category: 'clothes', sub_category: 'jacket', stock: 6, description:'suede jacket', size: 'L', gender: 'M')
    new_item1s3ijacket.save

    new_item2s1ijacket = s2.items.build(category: 'clothes', sub_category: 'jacket', stock: 4, description:'suede jacket', size: 'S', gender: 'M')
    new_item2s1ijacket.save
    new_item2s2ijacket = s2.items.build(category: 'clothes', sub_category: 'jacket', stock: 4, description:'suede jacket', size: 'M', gender: 'F')
    new_item2s2ijacket.save
    new_item2s3ijacket = s2.items.build(category: 'clothes', sub_category: 'jacket', stock: 6, description:'suede jacket', size: 'L', gender: 'F')
    new_item2s3ijacket.save

    new_item3s1ijacket = s3.items.build(category: 'clothes', sub_category: 'jacket', stock: 4, description:'suede jacket', size: 'S', gender: 'F')
    new_item3s1ijacket.save
    new_item3s2ijacket = s3.items.build(category: 'clothes', sub_category: 'jacket', stock: 4, description:'suede jacket', size: 'M', gender: 'M')
    new_item3s2ijacket.save
    new_item3s3ijacket = s3.items.build(category: 'clothes', sub_category: 'jacket', stock: 6, description:'suede jacket', size: 'L', gender: 'F')
    new_item3s3ijacket.save

#Address
u1 = User.find_by id:1
u2 = User.find_by id:2
u3 = User.find_by id:3
address_one = u1.build_address(street_address:'26 Martens Place', city: 'Tingalpa', state: 'QLD', postcode: 4173, address_type: 'home')
address_one.save

address_two = u2.build_address(street_address:'57 Bayview Close', city: 'Tieri', state: 'QLD', postcode: 4709, address_type: 'home')
address_two.save

address_three = u3.build_address(street_address:'35 Raglan Street', city: 'Tingoora', state: 'VIC', postcode: 3507, address_type: 'home')
address_three.save
# u2.address.create(street_address:'57 Bayview Close', city: 'Tieri', state: 'QLD', postcode: 4709, address_type: 'home')
# u3.address.create(street_address:'35 Raglan Street', city: 'Tingoora', state: 'VIC', postcode: 3507, address_type: 'home')