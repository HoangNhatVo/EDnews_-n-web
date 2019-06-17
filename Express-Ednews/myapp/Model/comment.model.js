var orm = require('../config/orm');
module.exports ={
    commentPost:(IDPost)=>{
        return orm.selectAll(`call CommentPost('${IDPost}')`);
    }
}