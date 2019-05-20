var orm = require('../config/orm');
module.exports ={
    allCat: ()=>{
        return orm.selectAll('call GetMainCategory');
    },
    SubCatByMainCat: ele => {
        return orm.selectAll(`call GetCategory('${ele.TenChuyenMuc_KhongDau}')`);
    },
    //Lay danh sach MainCategories
    getMainCategories:()=>{
        return orm.selectAll(`call GetMainCategory`);
    },
    //Lay ten Categories
    getNameCategory: Name=>{
        return orm.selectAll(`call GetCategoryName('${Name}')`);
    }
};