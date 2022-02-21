const mongoose  = require('mongoose');
// const {Schema} = mongoose;

const portfolioSchema = new mongoose.Schema({
    title: {
        type: String,
        required: true
    },
    description: {
        type: String,
    },
    image: { 
    	type:String
    },
    createAt: {
        type: Date,
        default: Date.now,

    }
});


const  portfoliomodel = mongoose.model('portfolio',portfolioSchema);

module.exports = portfoliomodel;