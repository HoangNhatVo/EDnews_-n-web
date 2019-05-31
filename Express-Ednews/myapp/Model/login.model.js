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
    },
    addUser2:(HoTen, SDT, NgaySinh, GioiTinh, Email, Password,NgayDangKy,NgayHetHan,TinhTrang) =>{
        return orm.selectAll(`call AddUser2('${HoTen}','${SDT}','${NgaySinh}','${GioiTinh}','${Email}',
        '${Password}','${NgayDangKy}','${NgayHetHan}','${TinhTrang}')`);
    }
};