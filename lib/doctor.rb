require 'pry'
class Doctor
    attr_accessor :name, :appointment  
    @@all = []
    
    def initialize(name)
        @name = name
        @appointment = appointment  
        @@all << self
    end 

    def self.all
        @@all
    end 

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 

    def appointments 
        Appointment.all.select{|appt| appt.doctor == self }
    end 

    def patients 
        appointments.map { |doc| doc.patient }
    end 





end 