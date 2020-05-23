class Doctor
  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self

  end

  def appointments
    @appointments
  end

  def new_appointment(date, patient)
    appt = Appointment.new(date, patient, self)
#    @appointments << appt
  #  @appointments << appt

  end

  def self.all
    @@all
  end

#  def patients
#  Patient.all.select do |appt|
#    appt.patient == self
#  end
#  end

def patients
  appointments.map do |appt|
    appt.patient
  end
end

end
