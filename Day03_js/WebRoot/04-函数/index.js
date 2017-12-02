var num = 20;
console.debug(num);

//定义函数

//1.无参数,无返回
function doWork(){
	var num = 30;
	console.debug("函数,"+num);
}

//第一种调用方式
/*doWork();*/
//第二种调用方式
/*window.onload = doWork;*/


//2.有参数  无返回
function p(a) {
	console.debug(a);
}
p(123456);
p("hello");


//3.有参数  有返回
function getSum(x, y) {
	return x+y;
}
p(getSum(10,30));
p(getSum("10","30"));


//匿名函数
var add = function(x, y){
	return x+y;
};
p(add(20,40));

var xxx = add;
p(xxx(50,60));





