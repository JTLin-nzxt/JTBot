module.exports = function(robot) 
{
	robot.router.get('/hubot/acumatica-webhook/', function(req, res) 
    {
		data = req.body;
		if(req.body.payload!=null)
			data = req.body.payload;
		robot.messageRoom("G01P1JPCMEG", "Acumatica Webhook : " + data);
		res.send('OK');
    });

}
