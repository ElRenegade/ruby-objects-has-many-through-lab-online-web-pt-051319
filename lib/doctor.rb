class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
   appointments.all.collect do |appointment|
     appointment.patient
   end
  end
end
