var orm = require('../config/orm');
module.exports ={
    //Duyệt bài viết
    ApprovePost:(IDPost,IDEditor)=>{
        return orm.selectAll(`call ApprovePost('${IDPost}',${IDEditor})`);
    },
    //từ chối bài viêt
    DeclinePost:(IDPost,IDEditor,ReasonDecline)=>{
        return orm.selectAll(`call DeclinePost('${IDPost}',${IDEditor},'${ReasonDecline}')`);
    },
    //xuất bản bài viết
    PublishPost:IDpost=>{
        return orm.selectAll(`call PublishPost('${IDpost}')`);
    }
}