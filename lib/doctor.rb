require 'pry'
class Doctor
    attr_accessor :name
# Created an empty array to store all doctors instances
    @@all = []
# initializes with a name and adds itself to an array of all doctors
    def initialize(name)
        @name = name 
        @@all << self
    end
# Knows about all the doctor instances created.
    def self.all
        @@all
    end
# Given a date and a patient, creates a new appointment.
    def new_appointment(date,patient)
        Appointment.new(date, patient, self)
    end
# Return all appointments associated with this Doctor.
    def appointments 
        Appointment.all.select {|appointment| appointment.doctor == self}
    end
# Has many patiens, through appointments.
    def patients 
        appointments.map {|appointment| appointment.patient}
    end
end