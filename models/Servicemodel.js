const mongoose  = require('mongoose');
// const {Schema} = mongoose;

const serviceSchema = new mongoose.Schema({
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


const Servicemodel = mongoose.model('services',serviceSchema);

module.exports = Servicemodel;