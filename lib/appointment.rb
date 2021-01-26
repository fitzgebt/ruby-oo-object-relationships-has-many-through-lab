require 'pry'

class Appointment
   attr_accessor :patient, :doctor, :appointment
   attr_writer
   attr_reader 

   @@all = []

   def initialize(appointment, patient, doctor)
    @appointment = appointment
    @doctor = doctor
    @patient = patient
    @@all << self
   end

   def self.all
    @@all
   end
end
