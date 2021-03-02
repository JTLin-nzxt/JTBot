module.exports = (robot) ->
  # the expected value of :room is going to vary by adapter, it might be a numeric id, name, token, or some other value
  robot.router.post '/acumaticaWebhook/', (req, res) ->
    room   = "G01P1JPCMEG"
    data   = if req.body.payload? then JSON.parse req.body.payload else req.body
    //secret = data.secret

    robot.messageRoom room, "I have a secret: #{data}"

    res.send 'OK'
