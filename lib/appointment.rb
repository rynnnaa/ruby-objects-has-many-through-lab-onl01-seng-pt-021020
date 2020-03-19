class Appointment
  
  @@all = []
  attr_reader
  attr_accessor :doctor, :patient, :date
  
  def initialize(date, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def doctor
    @doctor
  end
  
  def patient
    @patient
  end
end