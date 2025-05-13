console.log("content-script...");

// console.log(window.location.href.includes("localhost"))
console.log(window.location.href)

chrome.storage.local.set("a1", '111');

a=chrome.storage.local.get("a1");
console.log(a + "sss");


// const elements = document.querySelectorAll('.d1');
// elements.forEach(el => el.remove());

// 是否,该域名
if (window.location.href.includes("tsdm") ) {

    // 找出,该元素
    let elements = document.querySelectorAll('div.wrap+div');
    // 遍历删除
    elements.forEach(el => el.remove());

    elements = document.querySelectorAll('.gotopbg');
    elements.forEach(el => el.remove());
    
}
