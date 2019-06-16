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
    },
    //lay danh sach nguoi dung
    Getlistuser:()=>{
        return orm.selectAll(`call GetListUsers()`);
    },
    //lay danh sach nguoi dung theo phan he
    GetlistuserwithRole:IDRole=>{
        return orm.selectAll(  `call GetListUserWithRole('${IDRole}')`);
    },
    //cap nhat phan he nguoi dung
    Updateuser:(IDuser,Phanhe)=>{
        return orm.selectAll(`call UpdateRoleUser(${IDuser},'${Phanhe}')`);
    },
    //cap nhat thong tin nguoi dung
    UpdateInforUser:(IDuser,Name,DateBirth,Email,ButDanh)=>{
        return orm.selectAll(`call UpdateInfoUserWithID2(${IDuser},'${Name}','${DateBirth}','${Email}','${ButDanh}')`);
    },
    //Khóa tài khoản người dùng
    LockUser:IDuser=>{
        return orm.selectAll(`call LockUser(${IDuser})`);
    },
    UnLockUser:IDuser=>{
        return orm.selectAll(`call UnLockUser(${IDuser})`);
    },
    SetHightLightPost:(IDBaiViet,Type)=>{
        return orm.selectAll(`call HightlightPost('${IDBaiViet}',${Type})`);
    },
    DeletePost:(IDBaiViet)=>{
        return orm.selectAll(`call DeletePost('${IDBaiViet}')`);
    }
}