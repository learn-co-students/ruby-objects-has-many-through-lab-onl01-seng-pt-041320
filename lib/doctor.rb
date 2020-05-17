require 'pry'

class Doctor

    @@all =[]

    attr_accessor :name, :appointment, :patient

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        new_appointment = Appointment.new(date, patient, self)
    end
   
    def appointments
        Appointment.all.select {|a| a.doctor == self}
    end

    def patients
        appointments.map{|a| a.patient}
    end


end