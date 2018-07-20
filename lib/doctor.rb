
class Doctor
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment( patient, date)
    appointment = Appointment.new(self, patient, date)
  end
  
  def appointments 
    Appointment.all.select {|appointment|
      appointment.doctor == self
    }
  end
  
  def patients
    appointments.map{|app|
      app.patient
    }
  end
end