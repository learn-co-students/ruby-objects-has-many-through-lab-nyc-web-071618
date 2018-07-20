require 'pry'

class Doctor
  attr_accessor :name
  @@doctor = []

  def initialize(name)
    @name = name
    @@doctor << self
  end

  def self.all
    @@doctor
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select{|point| point.doctor == self}
  end

  def patients
    appointments.map do |instance|
      instance.patient
    end
  end

end
