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
    getPostfromCategories: NameSubCategories =>{
        return orm.selectAll(`call GetNewPostsWithCategory('${NameSubCategories}')`);
    },
    //lay bai viet tu mainCategories
    getPostfromMainCategories: NameCategories=>{
        return orm.selectAll(`call GetNewPostsWithMainCategory('${NameCategories}')`);
    },
    //lay bai viet doc nhiều nhất
    getPostReadMost: ()=>{
        return orm.selectAll();
    },
    //lay chi tiet bai viet
    getDetailPost:idPost=>{
        return orm.selectAll(`call GetDetailsPost('${idPost}')`);
    },
    getTagPost:idPost=>{
        return orm.selectAll(`call GetTagsPost('${idPost}')`);
    },
    getCommentPost:idPost=>{
        return orm.selectAll(`call getcommentspost('${idPost}')`);
    }
};