class Patient



  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor,date)
    new_appointment = Appointment.new(self,doctor,date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointment_array = appointments
    appointment_array.map do |appointment|
      appointment.doctor
    end
  end


end
