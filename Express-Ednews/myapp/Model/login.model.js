var orm = require('../config/orm');
module.exports ={
    
    getUser:(email)=>{
        return orm.selectAll(`call GetUser('${email}')`);
    },

    addUser:(fullname, phonenumber, birthday, gender, email, pass) =>{
        return orm.selectAll(`call GetUser(N'${fullname}','${phonenumber}','${birthday}',N'${gender}','${email}','${pass}')`);
    }
};