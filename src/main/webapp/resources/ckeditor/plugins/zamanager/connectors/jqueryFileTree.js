﻿var fs=require("fs"),_getDirList=function(c,f){var d=c.body.dir,a='\x3cul class\x3d"jqueryFileTree" style\x3d"display: none;"\x3e';try{a='\x3cul class\x3d"jqueryFileTree" style\x3d"display: none;"\x3e',fs.readdirSync(d).forEach(function(b){var e=d+b;if(fs.statSync(e).isDirectory())a+='\x3cli class\x3d"directory collapsed"\x3e\x3ca href\x3d"#" rel\x3d"'+e+'/"\x3e'+b+"\x3c/a\x3e\x3c/li\x3e";else{var c=b.split(".")[1];a+='\x3cli class\x3d"file ext_'+c+'"\x3e\x3ca href\x3d"#" rel\x3d'+e+"\x3e"+b+"\x3c/a\x3e\x3c/li\x3e"}}),
a+="\x3c/ul\x3e"}catch(g){a+="Could not load directory: "+d,a+="\x3c/ul\x3e"}f.send(a)};module.exports.getDirList=_getDirList;