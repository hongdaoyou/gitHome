console.log("background-server");


// 监听,标签页的变化
chrome.tabs.onUpdated.addListener((tabId, changeInfo, tab) => {
    // console.log(changeInfo  + 'sss');
    // console.log(tab.url  + 'fff');
    
    // 正在加载
    if (changeInfo.status === 'loading' && tab.url) {
    // if (changeInfo.status === 'complete' && tab.url) {
    // if (changeInfo.status === 'complete' && tab.url && tab.url.includes('localhost')) {
    
      // 执行,内容脚本
      chrome.scripting.executeScript({
        target: { tabId: tabId },
        files: ['contentScript.js']
      });
    }
  });
