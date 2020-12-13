puts 'Creating 10 classes..'

10.times do
  classes = YogaClass.new(
    name: ["Strength Building Flow", "Yoga for Flexibility", "Beginner Yoga Flow", "Lazy Stretch", "Easy Yoga Flow"].sample,
    description: ["Feel like you have some extra energy to burn off ? Here is a simple and effective practice to create some heat and strengthen your body. Get comfortable with with the poses then bring your focus on your inhale and exhale to get the best out of it !", "Feel like you have some extra energy to burn off ? Here is a simple and effective practice to create some heat and strengthen your body. Get comfortable with with the poses then bring your focus on your inhale and exhale to get the best out of it !", "The perfect flow for leaner legs! This class is designed to stretch, strengthen and tone your legs to increase your flexibility over time. The key is patience and persistence! Whatever your goals this intermediate class is a good introduction to help you gain leg flexibility.", "The perfect starting point if you are new to yoga or want to take it back to basics. This relaxing flow will stretch and release your entire body leaving you feeling calm and collected.", "The perfect chill out and let go yoga flow. A great session to practice after sport or before going to bed. This set of relaxing postures is designed to release tension and stress from the body and mind."].sample,
    price: [20, 30, 50, 100].sample,
    address: Faker::Address.full_address,
    capacity: [4, 5, 6, 7, 8, 9, 10].sample,
    date: Faker::Date.forward(days: 31),
    time: Faker::Time.forward(days: 5,  period: :evening, format: :short),
    duration: [10, 20, 30, 45, 60].sample
  )
  classes.save!
  puts "Creating a yoga class"
end

puts "done!"
