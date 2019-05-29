var orm = require('../config/orm');
module.exports ={
    
    getUserWithEmail:(email)=>{
        return orm.selectAll(`call GetUserWithEmail('${email}')`);
    },
    getUserWithPhonenumber:(SDT)=>{
        return orm.selectAll(`call GetUserWithPhonenumber('${SDT}')`);
    },
    addUser:(HoTen, SDT, NgaySinh, GioiTinh, Email, Password) =>{
        return orm.selectAll(`call AddUser('${HoTen}','${SDT}','${NgaySinh}','${GioiTinh}','${Email}','${Password}')`);
    }
};