const mongoose  = require('mongoose');
// const {Schema} = mongoose;

const reviewSchema = new mongoose.Schema({
    clientname: {
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
    rating: {
        type: Number,
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


const Reviewmodel = mongoose.model('reviews',reviewSchema);

module.exports = Reviewmodel;