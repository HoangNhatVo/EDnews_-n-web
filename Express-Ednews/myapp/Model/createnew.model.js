var orm = require('../config/orm');
module.exports ={
    getListCategory:()=>{
        return orm.selectAll(`call GetListCategory()`);
    }
}