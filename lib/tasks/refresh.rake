namespace :refresh do
  desc "Create all new emergencies and responders to mess around with"
  task :tables => :environment do
    require 'faker'

      Emergency.destroy_all
      Responder.destroy_all

      level_array = (0..4).to_a
      letter_array = ("A".."Z").to_a

      12.times do |emergency|
        Emergency.create(code: "#{letter_array.sample}-#{Faker::Code.ean[0,7]}", fire_severity: level_array.sample, police_severity: level_array.sample, medical_severity: level_array.sample)
      end
      emergency_id_array = Emergency.pluck(:id)
      puts "#{Emergency.count} emergencies generated.  Emergency_id_array: #{emergency_id_array}"


      on_duty_array = [true, false]
      type_array = ['Fire', 'Police', 'Medical']

      25.times do |responder|
        Responder.create(responder_type: type_array.sample, name: Faker::Name.name, capacity: level_array.sample, on_duty: on_duty_array.sample, emergency_id: emergency_id_array.sample)
      end
      puts "#{Responder.count} responders generated."

  end
end
