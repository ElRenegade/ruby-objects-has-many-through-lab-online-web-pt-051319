class Doctor
  attr_accessor :name, :appointment, :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
   Appiontment.all.collect do |appointment|
     appointment.patient
   end
  end
end
