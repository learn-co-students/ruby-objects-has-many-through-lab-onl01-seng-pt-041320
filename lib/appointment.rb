class Appointment
  attr_accessor :patient, :date, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor

    @@all << self
    doctor.appointments << self
    patient.appointments << self
  end

  def self.all
    @@all
  end

  def doctor
    @doctor
  end



end
