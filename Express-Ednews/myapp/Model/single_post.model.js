var orm = require('../config/orm');
module.exports ={
    // lay bai viet noi bat
    getFeaturePost: (Pre)=>{
        return orm.selectAll(`call GetSinglePost(${Pre})`);
    },
    // lay bai viet moi
    getNewPost:(Pre)=>{
        return orm.selectAll(`call GetNewPost(${Pre})`);
    },
    // lay bai viet hom nay
    getToDayPost:(Pre)=>{
        return orm.selectAll(`call GetTodayPost(${Pre})`);
    },
    // lay bai viet subcategories
    getPostfromCategories: (NameSubCategories,limit,offset,Pre) =>{
        return orm.selectAll(`call GetNewPostsWithCategory('${NameSubCategories}',${limit},${offset},${Pre})`);
    },
    //lay bai viet tu mainCategories
    getPostfromMainCategories: (NameCategories,limit,offset,Pre)=>{
        return orm.selectAll(`call GetNewPostsWithMainCategory('${NameCategories}',${limit},${offset},${Pre})`);
    },
    //Lay so bai viet cua chuyen muc cha
    getCountPostfromMainCat:(NameCat,Pre)=>{
        return orm.selectAll(`call CountPostwithMainCat('${NameCat}',${Pre})`);
    },
    //lay so bai viet cua chuyen muc con
    getCountPostCat:(NameCat,Pre)=>{
        return orm.selectAll(`call CountPostwithCat('${NameCat}',${Pre})`);
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
    getPostwithTag:(TenTag,limit,offset,Pre)=>{
        return orm.selectAll(`call GetPostsWithTag('#${TenTag}',${limit},${offset},${Pre})`);
    },
    //dem so luong bai viet theo tag
    getCountPostwithTag:(TenTag,Pre)=>{
        return orm.selectAll(`call CountPostsWithTag('#${TenTag}',${Pre})`);
    },
    IncreaseViewPost:IDPost=>{
        return orm.selectAll(`call IncreaseView('${IDPost}')`);
    },
    GetMostViewPost:()=>{
        return orm.selectAll(`call GetHighestViewPost()`);
    },
    SearchPost:(Keyword,limit,offset,Pre)=>{
        return orm.selectAll(`call FindPost('${Keyword}',${limit},${offset},${Pre})`);
    },
    CountSearchPost:(Keyword,Pre)=>{
        return orm.selectAll(`call NumberOfFindPost('${Keyword}',${Pre})`);
    },
    GetPostWithState:IDstate=>{
        return orm.selectAll(`call GetPostWithState(${IDstate})`);
    },
    AddComment:(IDPost,IDUser,Comment)=>{
        return orm.selectAll(`call AddComment('${IDPost}','${IDUser}','${Comment}')`);
    },
    // LikeOrDislikeComment:(IDUser,IDComment)=>{
    //     return orm.selectAll(`call LikeOrDislikeComment('${IDUser}','${IDComment}')`);
    // },
    // CheckLike:(IDUser,IDComment)=>{
    //     return orm.selectAll(`call CheckLike('${IDUser}','${IDComment}')`);
    // }
    GetRelatePost:IDpost=>{
        return orm.selectAll(`call GetRelatedPosts('${IDpost}')`);
    }
};