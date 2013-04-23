var fs = require('fs');
var rs = fs.createReadStream('testdata_cn.md', {bufferSize: 11});
var data = '';
rs.on('data', function(trunck){
    data += trunck;
});
rs.on('end', function(){
    console.log(data);
});