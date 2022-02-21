const mongoose  = require('mongoose');
// const {Schema} = mongoose;

const digitalSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    title: {
        type: String,
        required: true
    },
    description: {
        type: String,
        required: true
    },
    experience: {
        type: String,
        required: true
    },
    image: { 
    	type:Array
    },
    createAt: {
        type: Date,
        default: Date.now,

    }
});


const Digitalmodel = mongoose.model('digitallegacy',digitalSchema);

module.exports = Digitalmodel;