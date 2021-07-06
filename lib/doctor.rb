class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
    patients = []
    self.appointments.each {|appointment| patients << appointment.patient}
    patients
  end
  
  def self.all
    @@all
  end
  
end