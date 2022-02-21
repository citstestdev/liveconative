const mongoose  = require('mongoose');
// const {Schema} = mongoose;

const processSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    description: {
        type: String,
        required: true
    },
    image: { 
    	type:String
    },
    createAt: {
        type: Date,
        default: Date.now,

    }
});


const Processmodel = mongoose.model('process',processSchema);

module.exports = Processmodel;