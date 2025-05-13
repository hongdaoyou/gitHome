console.log("content-script...");

// console.log(window.location.href.includes("localhost"))
console.log(window.location.href)

// console.log(chrome.storage)

// chrome.storage.local.set({ key: "value" }, () => {
//     console.log("数据已存储");
//   });

// chrome.storage.local.set({"a1": ['111', 22,33]});

// chrome.storage.local.set({"a1": {k1:111, k2:"L222"}  });

// chrome.storage.local.get()
//     .then(result => {
//         console.log(result);

//         // console.log(result.a1.k2 + "sss");
//     })
//     .catch(error => {
//         console.log(error)
//     })

// console.log(a + "sss");

// chrome.storage.local.set({k1:"1111", k2:"k222"} );

// chrome.storage.local.get([k1], (result) => {
// console.log("读取的数据:", result);
// });
  
// const elements = document.querySelectorAll('.d1');
// elements.forEach(el => el.remove());

// 单独的设置
// 是否,该域名
// if (window.location.href.includes("tsdm") ) {

//     // 找出,该元素
//     let elements = document.querySelectorAll('div.wrap+div');
//     // 遍历删除
//     elements.forEach(el => el.remove());

//     elements = document.querySelectorAll('.gotopbg');
//     elements.forEach(el => el.remove());
    
// }

chrome.storage.local.get(["delLaw"])
    .then(result => {
        
        result.delLaw = result.delLaw || {}; // 避免,不存在

        if (result.delLaw && result.delLaw?.["all"] ) {
            result.delLaw.all.forEach(el => {
                let elements = document.querySelectorAll(el);

                elements.forEach(el_1 => el_1.remove());
            })

        }
        // 主机名
        hostname = window.location.hostname

        // 遍历配置,是否符合
        for (k in result.delLaw) {
            // 域名下,对应的规则
            v = result.delLaw[k];

            if (hostname.indexOf(k) >= 0) {
                v.forEach(el => {
                    let elements = document.querySelectorAll(el);
    
                    elements.forEach(el_1 => el_1.remove());
                })
                console.log("match " + k);
            } else {
                // console.log("no match " + k);
            }
        }

        console.log(hostname);
        // alert(JSON.stringify(result.delLaw)  )

        // document.getElementById('showId').innerHTML(result.delLaw)
    })

