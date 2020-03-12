class Doctor
  
  attr_accessor :name
  
  @@all = [ ]
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date)
    appointment.doctor = self
  end
  
  def appointments
    Appointment.all.find { |appt| appt.doctor == self }
  end
  
  def patients
    Appointment.all.collect { |appt| appt.patient == self }
  end
  
end