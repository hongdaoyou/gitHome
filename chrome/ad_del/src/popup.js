// 初始化,点击后.必然执行的
get_law()


// 获取,规则
document.getElementById('searchId').addEventListener('click', () => {
    // alert('111');
    
    // 获取,删除的规则
    get_law()
});

function get_law () {
    // chrome.notifications.create({
    //     type: 'basic',
    //     iconUrl: 'icons/icon_32.png',
    //     title: '提示',
    //     message: '来自后台的消息'
    //     });
    // return;
    chrome.storage.local.get(["delLaw"])
        .then(result => {
            console.log(result.delLaw);

            // document.getElementById('showId').innerHTML = "<pre>"+ JSON.stringify(result.delLaw ) +"</pre>";
            document.getElementById('showId').innerHTML = JSON.stringify(result.delLaw );

        })
    // alert('222');
}

document.getElementById('insertId').addEventListener('click', () => {
    // alert('111');
    // alert(document.getElementById('insertId'))
    var lawStr = document.getElementById('inputLawId').value;
    console.log(lawStr);
    if (! lawStr) {
        alert("输入的规则,为空");
        return;
    }

    var lawArr = lawStr.split("##")

    // 如果,没有添加 all, 自己,手动添加
    if (lawArr.length == 1) {
        lawArr.unshift("all");
    }
    // console.log(lawArr);

    if (typeof lawArr[1] === 'number' ) {
        alert("输入的是,数字. 不合理的选择器");
        return;
    }
    // 获取,删除的规则
    chrome.storage.local.get(["delLaw"])
        .then(result => {
            
            console.log(result.delLaw);
            result.delLaw = result.delLaw || {}; // 避免,不存在

            // if (result.delLaw && result.delLaw.{lawArr[0]} )
            if (result.delLaw && result.delLaw?.[lawArr[0]] ) {
                if (result.delLaw[lawArr[0]].indexOf(lawArr[1] ) >= 0 ) {
                    alert(lawArr[1] + "已经存在了");
                    alert(JSON.stringify(result.delLaw) );

                    return;
                }
            } else {
                result.delLaw[lawArr[0]] = [];
            }
            result.delLaw[lawArr[0]].push(lawArr[1]);
            // chrome.storage.local.set({delLaw:{ lawArr[0]= }  } )
            

            chrome.storage.local.set({delLaw:result.delLaw} )
            // alert(result.delLaw)
            alert(JSON.stringify(result.delLaw)  )

            // document.getElementById('showId').innerHTML(result.delLaw)
        })
    
    // alert('222');

});

// 删除,规则
document.getElementById('deleteId').addEventListener('click', () => {
    // alert('111');
    // alert(document.getElementById('insertId'))
    var lawStr = document.getElementById('inputLawId').value;
    console.log(lawStr);
    if (! lawStr) {
        alert("输入的规则,为空");
        return;
    }

    var lawArr = lawStr.split("##")

    // 如果,没有添加 all, 自己,手动添加
    if (lawArr.length == 1) {
        lawArr.unshift("all");
    }
    // console.log(lawArr);

    // 获取,删除的规则
    chrome.storage.local.get(["delLaw"])
        .then(result => {
            
            console.log(result.delLaw);
            result.delLaw = result.delLaw || {}; // 避免,不存在

            // if (result.delLaw && result.delLaw.{lawArr[0]} )
            if (result.delLaw && result.delLaw?.[lawArr[0]] ) {
                if (result.delLaw[lawArr[0]].indexOf(lawArr[1] ) >= 0 ) {
                    // alert(lawArr[1] + "已经存在了");
                    // alert(JSON.stringify(result.delLaw) );

                    // return;
                } else {
                    alert(lawArr[1] + "不存在");
                    return ;
                }
            } else {
                alert(lawArr[1] + "不存在");

                return ;
            }
            result.delLaw[lawArr[0]] = result.delLaw[lawArr[0]].filter( item => item !== lawArr[1] );
            // chrome.storage.local.set({delLaw:{ lawArr[0]= }  } )

            chrome.storage.local.set({delLaw:result.delLaw} )
            alert(JSON.stringify(result.delLaw)  )

            // document.getElementById('showId').innerHTML(result.delLaw)
        })
    
    // alert('222');

});


// chrome.runtime.onMessage.addListener((request, sender, sendResponse) => {
//   if (request.action === "removeDiv1") {
//     // 查找并删除所有 .d1 元素
//     const elements = document.querySelectorAll('.d1');
//     elements.forEach(el => el.remove());
    
//     // 可选：返回删除的元素数量
//     // sendResponse({ count: elements.length });
//   }
// });
