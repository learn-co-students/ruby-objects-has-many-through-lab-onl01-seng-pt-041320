require 'pry' 
class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def appointments
    Appointment.all.select{|info| info.doctor == self}
 #   binding.pry
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients
    appointments.collect{|info| info.patient}
  end
  
  
end 