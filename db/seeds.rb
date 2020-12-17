puts "Everyone is fired! Covid is here!"

Building.destroy_all
Company.destroy_all
Employee.destroy_all
Office.destroy_all


weworks = [
  {name: "Finsbury Pavement", 
   country: "UK", 
   address: "131 Finsbury Pavement",
   rent_per_floor: 18000,
   number_of_floors: 8
  }, 
  {name: "Chelsea HQ", 
   country: "US", 
   address: "29 West 28th Street",
   rent_per_floor: 20000,
   number_of_floors: 20
  }, 
  {name: "Broadway", 
   country: "US", 
   address: "85 Broadway",
   rent_per_floor: 25000,
   number_of_floors: 6
  }
]


puts "Construction in progress!"
weworks.each do |we|
  Building.create(we)
end

companies = [
  "Microsoft",
  "Flatiron",
  "Green Peace",
  "FinFund LLC",
  "Inc'd Comics",
  "Blue Apron",
  "Dog the Bounty Hunter LLC"
]

puts "Founding companies!"
companies.each do |company|
  Company.create(name: company)
end

titles = [
  "CEO",
  "Engineer",
  "HR specialist",
  "Graphic designer",
  "CFO",
  "COO",
  "Instructor"
]

puts "Hiring employees!"
100.times do 
  Employee.create(
    name: Faker::Name.name_with_middle,
    title: titles.sample,
    company_id: Company.all.sample.id
  )
end

puts "Decorating offices!"
10.times do 
  random_building = Building.all.sample
  random_building_floors_array = (1..random_building.number_of_floors).to_a
  Office.create(
    company_id: Company.all.sample.id,
    building_id: random_building.id,
    floor: random_building_floors_array.delete(random_building_floors_array.sample)
  )
end
