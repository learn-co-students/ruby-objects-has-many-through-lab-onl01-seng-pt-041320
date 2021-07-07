require 'pry'
class Appointment 
    attr_accessor :date, :patient, :doctor
# Created an empty array to store all the new appoiment instances.
    @@all =[]
# Initialized appointment instance with a date, patient, doctor and store in all array.
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor 
        @@all << self
    end
# Knows about all appointments that has been created.
    def self.all
        @@all
    end
end