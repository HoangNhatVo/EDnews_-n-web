var orm = require('../config/orm');
module.exports ={
    getPostWithStateForEditor:(State, IDBTV)=>{
        return orm.selectAll(`call GetPostWithStateForEditor(${State},${IDBTV})`);
    },
    getPostWithStateForWriter: (State, IDPV)=>{
        return orm.selectAll(`call GetPostWithStateForWriter(${State},${IDPV})`);
    }
}