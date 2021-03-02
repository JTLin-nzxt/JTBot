module.exports = function(robot) 
{
	robot.router.get('/hubot/test/:room', function(req, res) 
    {
		console.log("root attack : " + req.params.room);
		robot.messageRoom("G01P1JPCMEG", "Webhook!");
		res.send('OK');
    });

}
