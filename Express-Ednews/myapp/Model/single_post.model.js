var orm = require('../config/orm');
module.exports ={
    // lay bai viet noi bat
    getFeaturePost: ()=>{
        return orm.selectAll('call GetSinglePost');
    },
    // lay bai viet moi
    getNewPost:()=>{
        return orm.selectAll('call GetNewPost');
    },
    // lay bai viet hom nay
    getToDayPost:()=>{
        return orm.selectAll('call GetTodayPost');
    },
    // lay bai viet subcategories
    getPostfromCategories: (NameSubCategories,limit,offset) =>{
        return orm.selectAll(`call GetNewPostsWithCategory('${NameSubCategories}',${limit},${offset})`);
    },
    //lay bai viet tu mainCategories
    getPostfromMainCategories: (NameCategories,limit,offset)=>{
        return orm.selectAll(`call GetNewPostsWithMainCategory('${NameCategories}',${limit},${offset})`);
    },
    //Lay so bai viet cua chuyen muc cha
    getCountPostfromMainCat:NameCat=>{
        return orm.selectAll(`call CountPostwithMainCat('${NameCat}')`);
    },
    //lay so bai viet cua chuyen muc con
    getCountPostCat:NameCat=>{
        return orm.selectAll(`call CountPostwithCat('${NameCat}')`);
    },
    //lay bai viet doc nhiều nhất
    getPostReadMost: ()=>{
        return orm.selectAll();
    },
    //lay chi tiet bai viet
    getDetailPost:idPost=>{
        return orm.selectAll(`call GetDetailsPost('${idPost}')`);
    },
    //lay the bai viet
    getTagPost:idPost=>{
        return orm.selectAll(`call GetTagsPost('${idPost}')`);
    },
    //lay comment bai viet
    getCommentPost:idPost=>{
        return orm.selectAll(`call getcommentspost('${idPost}')`);
    },
    //lay danh sach bai viet theo tag
    getPostwithTag:(TenTag,limit,offset)=>{
        return orm.selectAll(`call GetPostsWithTag('#${TenTag}',${limit},${offset})`);
    },
    //dem so luong bai viet theo tag
    getCountPostwithTag:TenTag=>{
        return orm.selectAll(`call CountPostsWithTag('#${TenTag}')`);
    }
};