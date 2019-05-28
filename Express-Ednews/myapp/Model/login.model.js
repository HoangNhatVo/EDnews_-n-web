var orm = require('../config/orm');
module.exports ={
    
    getUser:(email)=>{
        return orm.selectAll(`call GetUser('${email}')`);
    },

    addUser:(HoTen, SDT, NgaySinh, GioiTinh, Email, Password) =>{
        return orm.selectAll(`call AddUser('${HoTen}','${SDT}','${NgaySinh}','${GioiTinh}','${Email}','${Password}')`);
    }
};