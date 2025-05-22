// import fs from 'fs'

// 获取,localStorage 对象的 键.  和 指定的键名
function test () {
    const a = 'aa';

    Object.keys(localStorage).find(key => key.startsWith("ND_UC_AUTH"));

    console.log(a);

}

test()
