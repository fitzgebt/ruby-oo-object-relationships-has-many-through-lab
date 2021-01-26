require 'pry'

class Patient
   attr_accessor :doctor, :appointment
   attr_writer
   attr_reader :name

   @@all = []

   def initialize(name)
    @name = name
    @@all << self
   end
   
   def self.all
    @@all
   end

   def new_appointment(appointment, doctor)
    Appointment.new(appointment, self, doctor)
   end

   def appointments
    Appointment.all.select{|appointment| appointment.patient == self}
   end

   def doctors
    appointments.map {|appointment| appointment.doctor} 
   end
end
