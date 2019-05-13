var orm = require('../config/orm');
module.exports ={
    all: ()=>{
        return orm.selectAll('call Danhsachcm');
    }
};