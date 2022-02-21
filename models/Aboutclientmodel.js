const mongoose  = require('mongoose');
// const {Schema} = mongoose;

const aboutclientSchema = new mongoose.Schema({
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


const  aboutclientmodel = mongoose.model('aboutclient',aboutclientSchema);

module.exports = aboutclientmodel;