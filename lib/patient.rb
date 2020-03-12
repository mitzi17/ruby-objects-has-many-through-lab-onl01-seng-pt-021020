class Patient
  
  attr_accessor :name, :appointment, :doctor
  
  @@all = [ ]
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end
  
  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end
  
  def doctors
    appointments.collect { |appt| appt.doctor }
  end
  
end