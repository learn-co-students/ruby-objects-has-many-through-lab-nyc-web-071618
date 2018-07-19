require 'pry'

class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    # binding.pry
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select { |appointment| 
      # binding.pry
      appointment.patient == self }
  end

  def doctors
    appointments.map { |appointment| appointment.doctor }
  end
end