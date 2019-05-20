const connection = require("./connection");
const orm = {
    selectAll: sql =>{
        return new Promise((resolve,reject)=>{
            
            connection.query(sql,(err,results,fields)=>{
                if(err)
                reject.err;
                else{
                    resolve(results[0]);
                }
                
            });
        });
    }
};
module.exports = orm;