require 'pry'
class Patient
    attr_accessor :name
# Created empty array to store all the new patients.
    @@all = []
#  Initialized with a name.
    def initialize(name)
        @name = name 
        @@all << self
    end
# Knows about all patients.
    def self.all 
        @@all
    end
# Given a date and doctor, creates a new appointment belonging to that patient.
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end
# Return all appointment associated with this Patient.
    def appointments 
        Appointment.all.select {|appointment| appointment.patient == self}
    end
# Has many doctors through appointments.
    def doctors
        appointments.map {|appointment| appointment.doctor}
    end
end