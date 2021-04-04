"use strict";
var a=`I'm"ok"`;
var b=13;
var c='i amchinese';
var cd=[2,1,2,'ww'];
cd.push("a",'b');
cd.pop();
cd.unshift('z');
cd.shift();
cd.sort();
cd.reverse();
var e=cd.splice(1,2,'chiniese');
// console.log(cd.concat(e));
// console.log(cd);
var d=[null,2,3,5];
// console.log(d.join('`'));

var arr = ['小明', '小红', '大军', '阿黄'];

var k=arr.sort();
// console.log(`欢迎${k[0]},${arr[1]},${arr[2]}和${arr[3]}同学！`);


var xiaohong = {
    name: '小红',
    'middle-school': 'No.1 Middle School'
};
xiaohong.age=1;
console.log(xiaohong.hasOwnProperty('toString'));