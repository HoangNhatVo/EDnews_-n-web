var orm = require('../config/orm');
module.exports ={
    //Duyệt bài viết
    ApprovePost:(IDPost,IDEditor,PrePublishDate)=>{
        return orm.selectAll(`call ApprovePost('${IDPost}',${IDEditor},'${PrePublishDate}')`);
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
    //mo khoa tai khoan
    UnLockUser:IDuser=>{
        return orm.selectAll(`call UnLockUser(${IDuser})`);
    },
    //chon lam bai viet noi bat
    SetHightLightPost:(IDBaiViet,Type)=>{
        return orm.selectAll(`call HightlightPost('${IDBaiViet}',${Type})`);
    },
    //xoa bai viet
    DeletePost:(IDBaiViet)=>{
        return orm.selectAll(`call DeletePost('${IDBaiViet}')`);
    },
    // lay thong tin cua bien tap vien
    GetinforEditor:IDeditor=>{
        return orm.selectAll(`call InforEditor(${IDeditor})`);
    },
    //lay danh sach chuyen muc do bien tap vien quan ly
    GetListCatOfEditor:IDeditor=>{
        return orm.selectAll(`call ListCatOfEditor(${IDeditor})`);
    },
    //lay danh sach chuyen muc bien tap vien KHONG quan ly
    GetlistnoCatOfEditor:IDeditor=>{
        return orm.selectAll(`call NonListCatOfEditor(${IDeditor})`);
    },
    //them chuyen muc cho bien tap vien quan ly
    AddCatforEditor:(IDeditor,IDCat)=>{
        return orm.selectAll(`call AddCatForEditor(${IDeditor},'${IDCat}')`);
    },
    //xoa chuyen muc do bien tap vien quan ly
    DeleteCatforEditor:(IDeditor,IDCat)=>{
        return orm.selectAll(`call DelCatForEditor(${IDeditor},'${IDCat}')`);
    },
    ReNewSubscriber:IDuser=>{
        return orm.selectAll(`call ReNewSubscriber(${IDuser})`);
    },
    //check ngay dang bai viet
    CheckDatePublish:IDPost=>{
        return orm.selectAll(`call PublishPostwithEditor(${IDPost})`);
    }
}