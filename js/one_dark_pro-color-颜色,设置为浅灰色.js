// import fs from 'fs'


function test () {
    const a = 'aa';

    document.querySelectorAll('*').forEach(el => {
        el.style.setProperty('background', '#282C34', 'important');
        el.style.setProperty('color', '#ABB2BF', 'important');
    });

    
    console.log(a);

}

test()
