// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


//they don work on contract level

contract loops{

    function loop() public pure returns(uint){

        uint count = 0;

 //for loop
// for (initialization; test condition; iteration statement) {
//        statement or block of code to be executed if the condition is True
// }

        for(uint i=0; i<10; i++){
            count = count + 2;
        }       
//here it will start from 0 ;
//now it checks for statement 
/*here it for example where "i" is zero and than when the value is less than 10 the statement is true it comes down to the 
code and do "+5" 
*/

        return count;
    }

}




/*

contract gaurav{

    function fun() public pure returns(uint){

        uint age = 1;


        for(uint i=0; i<20; i=2){
            age = age + 1;
        }

        return age;
    }
}



age =1 
2 will store in age  

age 3  1+1=2  
i = 2   true    age 3 + 1= 4       2+1=3
i =19   true    age 20 + 1= 21      19+1=20
*/