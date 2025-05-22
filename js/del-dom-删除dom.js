// import fs from 'fs'


function test () {
    const a = 'aa';

    document.querySelectorAll('div.gotop+div').forEach((el => { console.log(el); el.remove(); })  ) 

    document.querySelectorAll('div.wrap+div').forEach((el => { el.style.display = 'none'}))

    console.log(a);

}

test()
