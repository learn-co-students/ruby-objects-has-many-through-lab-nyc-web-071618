class Doctor

  attr_reader :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient,date)
    new_appointment = Appointment.new(patient,self,date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointment_array = appointments
    appointment_array.map do |appointment|
      appointment.patient
    end
  end

end
