var orm = require('../config/orm');
module.exports ={
    getTagWithIDPost:(IDBaiViet)=>{
        return orm.selectAll(`call GetTagWithIDPost('${IDBaiViet}')`);
    },
    getPostWithIDPost:(IDBaiViet)=>{
        return orm.selectAll(`call GetPostWithIDPost('${IDBaiViet}')`);
    },
    listCat:(IDBaiViet)=>{
        return orm.selectAll(`call ListCat('${IDBaiViet}')`);
    },
    getAvatarPost:(IDBaiViet)=>{
        return orm.selectAll(`call GetAvatarPost('${IDBaiViet}')`);
    },
    updatePost:(IDBaiViet,TieuDe,TieuDe_KhongDau,IDChuyeMuc,NoiDung,NoiDungTomTat,NgayViet)=>{
        return orm.selectAll(`call UpdatePost('${IDBaiViet}','${TieuDe}','${TieuDe_KhongDau}','${IDChuyeMuc}','${NoiDung}','${NoiDungTomTat}','${NgayViet}')`);
    },
    deleteAllTagPost:(IDBaiViet)=>{
        return orm.selectAll(`call DeleteAllTagPost('${IDBaiViet}')`);
    },
    deleteTagNotUse:()=>{
        return orm.selectAll(`call DeleteTagNotUse()`);
    }
}

