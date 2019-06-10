var orm = require('../config/orm');
module.exports ={
    
    getUserWithEmail:(email)=>{
        return orm.selectAll(`call GetUserWithEmail('${email}')`);
    },
    getUserWithPhonenumber:(SDT)=>{
        return orm.selectAll(`call GetUserWithPhonenumber('${SDT}')`);
    },
    getUserWithID:(ID)=>{
        return orm.selectAll(`call GetUserWithID(${ID})`);
    },
    getUserWithPassword:(Password)=>{
        return orm.selectAll(`call GetUserWithPassword('${Password}')`);
    },
    getUserWithIDAndEmail:(ID, Email)=>{
        return orm.selectAll(`call GetUserWithIDAndEmail(${ID},'${Email}')`);
    },
    addOTPUserWithEmail:(Email,OTP)=>{
        return orm.selectAll(`call AddOTPUserWithEmail('${Email}','${OTP}')`);
    },
    addUser:(HoTen, SDT, NgaySinh, GioiTinh, Email, Password) =>{
        return orm.selectAll(`call AddUser('${HoTen}','${SDT}','${NgaySinh}','${GioiTinh}','${Email}','${Password}')`);
    },
    addUser2:(HoTen, SDT, NgaySinh, GioiTinh, Email, Password,NgayDangKy) =>{
        return orm.selectAll(`call AddUser2('${HoTen}','${SDT}','${NgaySinh}','${GioiTinh}','${Email}',
        '${Password}','${NgayDangKy}')`);
    },
    updatePasswordUserWithID:(ID,Password)=>{
        return orm.selectAll(`call UpdatePasswordUserWithID(${ID},'${Password}')`);
    },
    updateInfoUserWithID:(ID,HoTen,NgaySinh,Email)=>{
        return orm.selectAll(`call UpdateInfoUserWithID(${ID},'${HoTen}','${NgaySinh}','${Email}')`);
    },
    updatePasswordUserWithEmail:(Email, Password)=>{
        return orm.selectAll(`call UpdatePasswordUserWithEmail('${Email}','${Password}')`);
    }
};