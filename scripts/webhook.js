module.exports = function(robot) 
{
	robot.router.get('/hubot/test/', function(req, res) 
    {
		robot.messageRoom("G01P1JPCMEG", "Webhook!");
		res.send('OK');
    });

}
