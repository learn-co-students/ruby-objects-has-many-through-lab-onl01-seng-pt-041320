class Patient
    attr_accessor :name, :date, :doctor
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end
    
    def appointments
        Appointment.all.select do |appo|
            appo.patient == self
        end
    end

    def doctors
        Appointment.all.map do |doc|
            doc.doctor
        end
    end
end