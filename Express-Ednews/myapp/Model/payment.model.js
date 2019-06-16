var orm = require('../config/orm');
module.exports ={
    getdetailcard:(IDUser)=>{
        return orm.selectAll(`call GetDetailCard('${IDUser}')`);
    },
    addmoney:(IDUser,Money)=>{
        return orm.selectAll(`call AddMoney('${IDUser}','${Money}')`);
    },
    buypremiumpack:(IDUser)=>{
        return orm.selectAll(`call BuyPremiumPack('${IDUser}')`);
    },
    linkcreditcard:(IDUser,IDCard)=>{
        return orm.selectAll(`call LienKetTaiKhoanThe('${IDUser}','${IDCard}')`);
    }
    
}