# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


[
  {
    name: 'Advertising',
  },
   {
    name: "Accounting",
  },
   {
    name: "Business",
  },
   {
    name: "Information_technology",
  },
   {
    name: "Tech",
  },
   {
    name: "Public_relations",
  },
   {
    name: "Media",
  },
    {
    name: "Finance",
  },
    {
    name: "Human_resources",
  },
  {
    name: "Marketing",
  }

].each do |i|
  Industry.create(i)
end


[ {
    name: 'Annually',
  },
  {
    name: 'Monthly',
  },
   {
    name: "Quarterly",
  },
   {
    name: "Biannually",
  },
   {
    name: "Unavailable",
  }

].each do |i|
  Availability.create(i)
end
  
