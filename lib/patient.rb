class Patient
  
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
    Appointment.all.collect { |appt| appt.doctor == self }
  end
  
  