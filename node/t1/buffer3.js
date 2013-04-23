var fs = require('fs');
var rs = fs.createReadStream('testdata_cn_gbk.md', {bufferSize: 11});
var buffers = [];
var nread = 0;
//var data = '';
rs.on('data', function(trunck){
    buffers.push(trunck);
    nread += trunck.length;
});
rs.on('end', function(){
    var buffer = null;
    switch (buffers.length){
        case 0: buffer = new Buffer(0);
            break;
        case 1: buffer = buffers[0];
            break;
        default :
            buffer = new Buffer(nread);
            for(var i= 0,pos = 0,l=buffers.length;i<l;i++){
                var  trunck = buffers[i];
                trunck.copy(buffer, pos);
                pos += trunck.length;
            }
            break;
    }
    console.log(buffer);
});