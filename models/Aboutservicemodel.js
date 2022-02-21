const mongoose  = require('mongoose');
// const {Schema} = mongoose;

const aboutserviceSchema = new mongoose.Schema({
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


const  aboutservicemodel = mongoose.model('aboutservice',aboutserviceSchema);

module.exports = aboutservicemodel;