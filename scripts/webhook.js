module.exports = function(robot) 
{
	robot.router.get('/hubot/test/:room', function(req, res) 
    {
		console.log("root attack : " + req.params.room);
		res.send('OK');
    });
	
    robot.router.post('/hubot/acumatica-webhook/:room', function(req, res) 
    {
		//room = "G01P1JPCMEG";
		room   = req.params.room;
		data = req.body;
		console.log(data);
		robot.messageRoom(room, "Acumatica Webhook :" + data);
		res.send('OK');
    });
}
