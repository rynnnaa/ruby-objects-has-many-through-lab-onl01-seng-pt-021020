class Patient
  attr_reader
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def appointment
    @appointment
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end
  
  def doctors
    appointments.mao { |appointment| appointment.doctor}
  end
end