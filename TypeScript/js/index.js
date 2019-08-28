"use strict";
/*
 * @Author: qtx
 * @Date: 2019-08-27 13:57:10
 * @LastEditors: qtx
 * @LastEditTime: 2019-08-28 15:10:27
 * @Description:
 */
/**
 * demo01
 */
console.log('hello world');
function getData() {
}
var str = "hello world";
/**
 * vscode   配置自动编译
 *
 * step1    tsc--init 生成tsconfig.json outdir:./js
 *
 * step2    run task tsconfig.json
 */
/**
 * demo02
 *
 * ts代码必须指定类型
 * boolean / number / string / array (tuple) / enum / any / null /  undefined / void / never
 */
// var flag: boolean = true;
// var num: number = 123;
// var str: string = 'this is ts';
//两种定义数组方式
//1.    var arr: number[] = [11, 22, 33, 44];
// 2.   var arr: Array<number> = [11, 22, 33, 44];
//元组类型 tuple 为每个位置指定类型
// let arr: [number, string] = [123, '22'];
//枚举类型 enum 标识符未赋值，值即为下标
// enum Flag { success = 1, error = 2 };
// let s: Flag = Flag.success;
// let f: Flag = Flag.error;
// console.log(s);//1
// console.log(f);//2
//any   任意类型
//null undefined void属于never
//never
// var a: never;
// a = (() => {
//     throw new Error('error');
// })()
/**
 * demo03
 * 函数
 *
 * es5
 * 声明法   function run(){}
 * 匿名法   var run=function(){}
 *
 * ts↓
 */
//声明法
/*
function run(): string {
    return 'run';
}
*/
//匿名法
/*
var run2 = function (): number {
    return 123;
}
*/
//定义方法传参
/*
function getInfo(name: string, age: number): string {
    return `${name} --- ${age}`;
}
console.log(getInfo('tom', 20));
 */
/*
var getInfo = function (name: string, age: number): string {
    return '123';
}
*/
//无返回值
/*
function run(): void {
    console.log('run');
}
*/
//可选参数
//es5中形参和实参必须一样，不一样则需配置可选参数
/*
function getInfo(name: string, age?: number): string {
    if(age){
        return `${name} --- ${age}`;
    }else{
        return `${name} --- 年龄保密`;
    }
}
console.log(getInfo('1'));
*/
//age:number=20为默认可选参数
//注意：可选参数必须配置在最后面！！！
//注意：可选参数必须配置在最后面！！！
//注意：可选参数必须配置在最后面！！！
//剩余参数
/*
function sum(a: number, ...result: number[]): number {
    var sum = a;
    for (var i = 0; i < result.length; i++) {
        sum += result[i];
    }
    return sum;
}
*/
//ts函数重载
//为兼容es5,es6与java有区别
//es5中同名方法下面会替换上面
/*
example1

function getInfo(name: string): string;
function getInfo(age: number): number;
function getInfo(str: any): any {
    if (typeof str === 'string') {
        return '我叫' + str;
    } else {
        return '我的年龄是' + str;
    }
}

example2

function getInfo(name: string): string;
function getInfo(name: string, age: number): string;
function getInfo(name: any, age?: any): any {
    if (age) {
        return '我叫' + name + ',年龄' + age;
    } else {
        return '我叫' + name;
    }
}
 */
//箭头函数 es6
//this 指向问题 指向上下文
// setTimeout(() => {}, 1000);
/**
 * demo5
 * 类
 */
// class Person {
//     name: string;//属性,省略public
//     constructor(n: string) {
//         this.name = n;
//     }
//     getName(): string {
//         return this.name;
//     }
//     setName(name: string): void {
//         this.name = name;
//     }
// }
// var p = new Person('123');
// console.log(p.getName());
// p.setName('321');
// console.log(p.getName());
//ts继承
// class Person {
//     name: string;
//     constructor(name: string) {
//         this.name = name;
//     }
//     run(): string {
//         return `${this.name}+777`;
//     }
// }
// class Web extends Person {
//     constructor(name: string) {
//         super(name);
//     }
//     work(){
//         console.log(`${this.name}+666`);
//     }
// }
// var w = new Web('123');
// w.work();
/**
 * 修饰符
 * public:      公有        类中，子类中，类外都可以访问
 * protected:   保护类型    类中，子类中可以访问，类外不能访问
 * private:     私有        在类中可以访问，子类，类外都无法访问
 *
 * 如果不加修饰符，default--public
 */
//多态属于继承
/*
class Animal {
    name: string;
    constructor(name: string) {
        this.name = name;
    }
    eat() {
        console.log('eat');
    }
}

class Dog extends Animal {
    constructor(name: string) {
        super(name);
    }

    eat() {
        return this.name + 'eat';
    }
}
*/
