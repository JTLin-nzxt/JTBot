module.exports = function(robot) 
{
	robot.router.post('/hubot/acumatica-webhook/', function(req, res) 
    {
		data = JSON.stringify(req.body);
		robot.messageRoom("G01P1JPCMEG", "Acumatica Webhook : " + data);
		res.send('OK');
    });
	robot.router.get('/hubot/webhook-get/:room', function(req, res) 
    {
		var room = req.params.room;
		var payload = req.params.payload;
		robot.messageRoom(room, "Get Webhook : " + content);
		res.send('OK');
    });
}
