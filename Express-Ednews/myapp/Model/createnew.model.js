var orm = require('../config/orm');
module.exports ={
    getListCategory:()=>{
        return orm.selectAll(`call GetListCategory()`);
    },
    addPost:(TieuDe,TieuDe_KhongDau,IDChuyenMuc,NoiDung,IDPhongVien,NoiDungTomTat,NgayViet)=>{
        return orm.selectAll(`call AddPost('${TieuDe}','${TieuDe_KhongDau}','${IDChuyenMuc}','${NoiDung}',${IDPhongVien},'${NoiDungTomTat}','${NgayViet}')`);
    },
    addTagPost:(IDBaiViet,IDTag)=>{
        return orm.selectAll(`call AddTagPost('${IDBaiViet}','${IDTag}')`);
    },
    getPictureWithName:(NamePicture)=>{
        return orm.selectAll(`call GetPictureWithName('${NamePicture}')`);
    },
    addPostPicture:(IDBaiViet,IDHinh)=>{
        return orm.selectAll(`call AddPostPicture('${IDBaiViet}',${IDHinh})`);
    },
    addPicture:(link)=>{
        return orm.selectAll(`call AddPicture('${link}')`);
    },
    countPicture:()=>{
        return orm.selectAll(`call CountPicture()`);
    }
}