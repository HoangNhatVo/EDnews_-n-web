var orm = require('../config/orm');
module.exports={
    getTag:IDtag=>{
        return orm.selectAll(`call GetTagWithID('${IDtag}')`);
    },
    addTag:NameTag=>{
        return orm.selectAll(`call AddTag('${NameTag}')`);
    },
    deleteTag:IDtag=>{
        return orm.selectAll(`call DeleteTag('${IDtag}')`);
    },
    updateTag:(IDtag,newNameTag)=>{
        return orm.selectAll(`call UpdateTag('${IDtag}','${newNameTag}')`);
    },
    checkTag:(NameTag)=>{
        return orm.selectAll(`call CheckTag('#${NameTag}')`);
    }
};