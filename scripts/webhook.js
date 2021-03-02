module.exports = function(robot) 
{
	robot.router.get('/hubot/acumatica-webhook/', function(req, res) 
    {
		data = req.body;
		robot.messageRoom("G01P1JPCMEG", "Acumatica Webhook : " + data);
		res.send('OK');
    });

}
