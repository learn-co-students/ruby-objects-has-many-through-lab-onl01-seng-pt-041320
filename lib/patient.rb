require 'pry'
class Patient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
        #binding.pry
    end

    def appointments
        Appointment.all.find_all {|appointment_day| appointment_day.patient == self}
    end

    def doctors
        Appointment.all.collect {|appointment_day| appointment_day.doctor}
    end
end