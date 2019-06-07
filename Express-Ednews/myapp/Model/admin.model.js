var orm = require('../config/orm');
module.exports ={
    //Duyệt bài viết
    ApprovePost:(IDPost,IDEditor)=>{
        return orm.selectAll(`call ApprovePost('${IDPost}',${IDEditor})`);
    },
    DeclinePost:(IDPost,IDEditor,ReasonDecline)=>{
        return orm.selectAll(`call DeclinePost('${IDPost}',${IDEditor},'${ReasonDecline}')`);
    }
}