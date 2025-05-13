document.getElementById('a1').addEventListener('click', () => {
  chrome.tabs.query({ active: true, currentWindow: true }, (tabs) => {
    
    chrome.tabs.sendMessage(tabs[0].id, { action: "removeDiv1" });

    // 点击,去除
    // chrome.scripting.executeScript({
    //   target: { tabId: tabs[0].id },
    //   func: () => {
    //     document.querySelectorAll('.d1').forEach(el => el.remove());
    //   }
    // });
  });
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
