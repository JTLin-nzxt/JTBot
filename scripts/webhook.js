module.exports = function(robot) 
{
    robot.router.post('/acumaticaWebhook/:room', function(req, res) 
    {
		//room = "G01P1JPCMEG";
		room   = req.params.room;
		data = req.body;
		console.log(data);
		robot.messageRoom(room, "Acumatica Webhook : #{data}");
		res.send('OK');
    });
}
