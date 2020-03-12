class Patient
  
  attr_accessor :name
  
  @@all = [ ]
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(doctor, date)
    appointment.patient = self
  end
  
  def appointments
    Appointment.all.detect { |appt| appt.patient == self }
  end
  
  def doctors
    appointments.map { |appt| appt.doctor == self }
  end
  
end