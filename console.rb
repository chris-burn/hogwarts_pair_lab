require_relative 'models/students'
require_relative 'models/houses'
require 'pry-byebug'

student1 = Student.new({
  'first_name' => "Chris",
  'last_name' => "Burn",
  'house_id' => 2,
  'age' => 21
  })

student2 = Student.new({
  'first_name' => "Colin",
  'last_name' => "Bell",
  'house_id' => 1,
  'age' => 26
  })


student1.save()
student2.save()


house1 = House.new({
  'name' => "Gryffindor",
  'logo' => "https://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=12976535"
  })

house2 = House.new({
  'name' => "Autobots",
  'logo' => "http://tfwiki.net/mediawiki/images2/thumb/6/6b/Autobot_symbol.png/250px-Autobot_symbol.png"
  })

house3 = House.new({
  'name' => "New Mutants",
  'logo' => "https://vignette4.wikia.nocookie.net/marveldatabase/images/b/b2/New_Mutants_Vol_1_Logo.png/revision/latest?cb=20130616143656"
  })

house4 = House.new({
  'name' => "Legion of Doom",
  'logo' => "https://s-media-cache-ak0.pinimg.com/originals/4a/1e/0a/4a1e0a8ffedf98147dddf8ccf2d7b134.jpg"
  })

house1.save()
house2.save()
house3.save()
house4.save()


binding pry
nil