class Doctor
    attr_accessor :name, :appointment, :patient
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |app|
            app.doctor == self
        end
    end

    def new_appointment
        Appointment.new(date, patient, self)
    end
end