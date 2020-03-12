class Appointment
  
  @@all = [ ]
  
  def self.all
    @@all
  end
  
  def initialize(date.str, patient, doctor)
    @date = date.str
    @patient = patient
    @doctor = doctor
    @@all << self
  end
end

  