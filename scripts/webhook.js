module.exports = function(robot) 
{
	robot.router.post('/hubot/acumatica-webhook/:room', function(req, res) 
    {
		var room = req.params.room;
		data = JSON.stringify(req.body);
		robot.messageRoom(room, "Acumatica Webhook : " + data);
		res.send('OK');
    });
	
	robot.router.get('/hubot/webhook-get/:room/:content', function(req, res) 
    {
		var room = req.params.room;
		var content = req.params.content;
		robot.messageRoom(room, content);
		res.send('OK');
    });
}
