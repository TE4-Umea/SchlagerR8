const SongsController = require('../controllers/SongsController');
const VoteController = require('../controllers/VoteController');
var express = require('express');
var router = express.Router();


router.get('/songs/read', SongsController.index);
router.post('/vote/create', VoteController.store);


router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});
module.exports = router;
