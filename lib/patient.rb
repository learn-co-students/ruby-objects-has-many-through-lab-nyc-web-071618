class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.patient == self
    end
  end

  def doctors
    self.appointments.map do |appointments|
      appointments.doctor
    end
  end
end
