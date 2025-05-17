// import fs from 'fs'


function test () {
    const a = 'aa';

    (function() {
        const authKey = Object.keys(localStorage).find(key => key.startsWith("ND_UC_AUTH"));
        if (!authKey) {
          console.error("未找到 Access Token，请确保已登录！");
          return;
        }
        const tokenData = JSON.parse(localStorage.getItem(authKey));
        const accessToken = JSON.parse(tokenData.value).access_token;
        console.log("%cAccess Token: ", "color: green; font-weight: bold", accessToken);
      })();

      

    console.log(a);

}

test()
