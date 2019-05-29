var orm = require('../config/orm');
module.exports ={
    allCat: ()=>{
        return orm.selectAll('call GetMainCategory');
    },
    SubCatByMainCat: ele => {
        return orm.selectAll(`call GetCategory('${ele.TenChuyenMuc_KhongDau}')`);
    },
    //Lay danh sach chuyen muc cha
    getMainCategories:()=>{
        return orm.selectAll(`call GetMainCategory`);
    },
    //Lay ten chuyen muc
    getNameCategory: Name=>{
        return orm.selectAll(`call GetCategoryName('${Name}')`);
    },
    //Lay tat ca ten chuyen muc
    getListNameCategory:()=>{
        return orm.selectAll(`call getmaincategory()`);
    },
    //Lay tat ca chuyen muc con cua chuyen muc cha
    getListSubcatOfMainCat:MainCat =>{
        return orm.selectAll(`call getcategory('${MainCat}')`);
    },
    //Lay tat ca cac Tag
    getListTag:()=>{
        return orm.selectAll(`call GetListTag()`);
    },
    //Them chuyen muc cha moi
    addMainCategoris:(Name,NameNo)=>{
        return orm.selectAll(`call AddMainCategory('${Name}','${NameNo}')`);
    },
    //them chuyen muc con moi
    addSubCategories:(IdMain,Name,NameNo)=>{
        return orm.selectAll(`call AddSubCategory('${IdMain}','${Name}','${NameNo}')`);
    },
    //xoa chuyen muc cha
    deleteCategories:(Id)=>{
        return orm.selectAll(`call DeleteMainCategory('${Id}')`);
    },
    // xoa chuyen muc con
    deleteSubCat:(Id)=>{
        return orm.selectAll(`call DeleteSubCategory('${Id}')`);
    },
    //update chuyen muc cha
    updateMainCat:(Id,Name,NameNo)=>{
        return orm.selectAll(`call UpdateMainCategory('${Id}','${Name})','${NameNo}'`);
    },
    //update chuyen muc cha
    updateSubCat:(Id,Name,NameNo)=>{
        return orm.selectAll(`call UpdateSubCategory('${Id}','${Name})','${NameNo}'`);
    }
};