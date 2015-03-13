# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Industry.delete_all
Availability.delete_all
Location.delete_all
Skill.delete_all
Role.delete_all


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


[ {
    city: 'Boston',
  },
  {
    city: 'New York',
  },
   {
    city: "San Francisco",
  },
   {
   city: "Philadephia",
  },
   {
    city: "Los Angeles",
  }

].each do |i|
  Location.create(i)
end

[ {
   name: 'Leadership',
 },
 {
   name: 'Team Management',
 },
  {
   name: "Strategy Tools",
 },
  {
   name: "Problem Solving",
 },
  {
   name: 'Decision Making',
 },
 {
   name: 'Project Management',
 },
 {
   name: 'Time Management',
 },
 {
   name: 'Stress Management',
 },
 {
   name: 'Communication',
 },
 {
   name: 'Creativity Tools',
 },
 {
   name: 'Learning Skills',
 },
 {
   name: 'Career Skills',
 }
 
].each do |i|
 Skill.create(i)
end
  


[
  {
  name: "mentor"
},
  {
  name: "mentee"
},
  {
  name: "both"
}
].each do |i|
  Role.create(i)
end
