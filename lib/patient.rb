class Patient
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []

  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    appt = Appointment.new(date, self, doctor)
  #  @appointments << appt
  end

  def appointments
    @appointments
  end

  def doctors
  appointments.map do |appt|
    appt.doctor
    end
  end


end
