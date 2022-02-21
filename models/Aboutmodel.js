const mongoose  = require('mongoose');
// const {Schema} = mongoose;

const aboutSchema = new mongoose.Schema({
    title: {
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


const  aboutmodel = mongoose.model('about',aboutSchema);

module.exports = aboutmodel;