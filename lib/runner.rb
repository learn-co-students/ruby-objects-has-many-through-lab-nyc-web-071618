require 'pry'
require_relative './artist'
require_relative './genre'
require_relative './song'
require_relative './doctor'
require_relative './appointment'
require_relative './patient'

# m83 = Artist.new("M83")
# gungor = Artist.new("Gungor")
# cool = Genre.new("Cool")
# mtn = Song.new("I am Mountain", gungor, cool)
# wait = Song.new("Wait", m83, cool)

d1 = Doctor.new("Dave")
p1 = Patient.new("Jeff")
app1 = Appointment.new(p1, d1, "August")
app2 = d1.new_appointment(p1, "July")

binding.pry
