# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# roles = ['teacher', 'ta', 'student']
# 10.times do
#   course = Course.create(
#     name: Faker::Educator.course_name
#   )
 
#   10.times do 
#     user = User.create(
#       first_name: Faker::Name.first_name,
#       last_name: Faker::Name.last_name
#     )

#     Enrollment.create(
#       role: roles.sample,
#       course_id: course.id,
#       user_id: user.id
#     )
#   end
# end



5.times do 
  @doctor = Doctor.create(
    first_name: "Dr.",
    last_name: Faker::Movies::StarWars.character
    )

  5.times do 
  @user = User.create(
    first_name: Faker::Movies::LordOfTheRings.character,
    last_name: Faker::Movies::LordOfTheRings.character
    )
    
    @appts = Appointment.create(
      date: Faker::Date.between(from: Date.today, to: 2.days.from_now),
      time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short),
      user_id: @user.id,
      doctor_id: @doctor.id,
      )
    end
  end
  
  puts "Data Seeded"