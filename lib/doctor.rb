class Doctor

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self unless @@all.include?(self)
    end

    def self.all 
        @@all
    end

    def appointments
        Appointment.all.select do |app|
            app.doctor == self 
        end
    end

    def new_appointment(date, patient) # given a date and Patient obj
        app = Appointment.new(date, patient, self)
        # self.appointments.last
    end

    def patients 
        Appointment.all.map do |app|
            app.patient
        end
    end 
end