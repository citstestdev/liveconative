const mongoose  = require('mongoose');
const Joi = require("joi");
// const {Schema} = mongoose;

const loginSchema = new mongoose.Schema({
    username: {
        type: String,
        required: true
    },
    password: {
        type: String,
        required: true
    }
});

const Loginmodel = mongoose.model('users',loginSchema);

const validate = (users) => {
    const schema = Joi.object({
        username: Joi.string().email().required().label("Email"),
        password: Joi.string().required(),
    });
    return schema.validate(users);
};


module.exports = { Loginmodel, validate };
// module.exports = Loginmodel;