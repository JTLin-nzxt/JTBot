module.exports = function(robot) 
{
    robot.router.post('/acumaticaWebhook/', function(req, res) 
    {
		room = "G01P1JPCMEG";
		data = if req.body.payload? then JSON.parse req.body.payload else req.body;
		console.log(data);
		robot.messageRoom(room, "I have a secret: #{data}");
		res.send('OK');
    });
}
