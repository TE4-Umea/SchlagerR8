
class VoteController {
    
    /**
     * @param req request
     * @param res response
     */
    static index(req, res) {
        
    }

    /**
     * @param req request
     * @param res response
     */
    static store(req, res) {
        if(!req.body) {
            res.status(404).send('data is missing');
            return;
        }
        console.log(req.body);
        let data = VoteController.parseData(req.body);
        const db = new (require('../util/Database'))();
        db.query('INSERT INTO votes (`song_id` `score`) VALUES (?, ?)', data);
        res.send({message: 'success', data: data});
    }

    static parseData(input) {
        let out = [];
        input.forEach(element => {
            // console.log(element); 
            out.push([element.id,element.score]);
        });
        return out;
    }
}

module.exports = VoteController;