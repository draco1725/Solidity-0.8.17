// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//Making a calculator in solidity

contract calc {

//defining the numbers here

    uint FirstNO;
    uint SecondNO ;

//here we set our first number     
    function firstnum(uint x) public {
        FirstNO = x;
    }
     
//here we set our second number
    function secondnum(uint y) public {
        SecondNO = y;
    }
    
//now lets make the multiplication       
     
    function multiply() view public returns (uint) {
        uint answer = FirstNO * SecondNO ;
        return answer;
    }
 
}
