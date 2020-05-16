require 'pry' 
class Patient 
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
    Appointment.all.select{|info| info.patient == self}
 #   binding.pry
  end 
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def doctors
    appointments.collect{|info| info.doctor}
  end 
  
end 