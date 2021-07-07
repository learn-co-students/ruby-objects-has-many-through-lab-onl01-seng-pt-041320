class Patient

  attr_accessor :name, :appointment, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

end 










# class Patient

#   attr_reader :name, :appointment, :doctor
#   @@all = []

#   def initialize(name)
#     @name = name
#     @appointment = appointment 
#     @doctor = doctor 
#     @all = self 
#   end

#   def new_appointment(doctor, date)
#     Appointment.new(self, doctor, date)
#   end

  # def appointments
  #   Appointment.all.select do |appointment|
  #     appointment.patient == self
  #   end
  # end

  # def doctors
  #   Appointment.all.map do |appointment|
  #     appointment.doctor
  #   end
  # end
  
#   def self.all 
#     @@all 
#   end 
# end