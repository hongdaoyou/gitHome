// 原型继承（传统方式）

function A(a) {
    this.a = a;
}
A.prototype.fun = function() {
    return `${this.a} return `;
};

function B(a) {
    A.call(this, a); // 调用父类构造函数
}
B.prototype = Object.create(A.prototype);
B.prototype.constructor = B;

const obj = new B("BBBB");
console.log(obj.fun()); // BBBB return

