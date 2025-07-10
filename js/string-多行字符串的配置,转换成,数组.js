// import fs from 'fs'


function test () {
    const a = 'aa';

s1=`
a1 b1
  a2   b2

`;

arr = s1.split("\n")
arr.forEach(item => {
    item = item.trim();
    
    if (item === '') {
        return;
    } else {
        a1 = item.split(/\s+/)
        console.log(a1)
    }
});

    // console.log(arr);

}

test()
