class Doctor
    attr_accessor :name

@@all = []

def initialize(name)
    @name = name 
    save  
end

def save 
    @@all << self 
end 

def self.all
    @@all  
end 

def appointments
    Appointment.all.filter do |appt|
        appt.doctor == self
    end
end  

def new_appointment(date, patient)
    Appointment.new(date, patient, self)
end

def patients 
    self.appointments.collect {|appointment| appointment.patient}
end

end