json.responder do
  json.id    @responder.id
  json.type  @responder.type
  json.name @responder.name
  json.capacity @responder.capacity
  json.on_duty @responder.on_duty

  json.emergency_id @responder.emergency ? @responder.emergency.id : nil
end
