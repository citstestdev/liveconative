const mongoose = require('mongoose');

const bestworkSchema = new mongoose.Schema({
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

const bestwork = mongoose.model('bestwork', bestworkSchema);

module.exports = bestwork;
