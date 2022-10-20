// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

contract A{

    uint public a;

    constructor (){
        a=100;
    }

    function funA() public {
        a=10;
    }
}

contract B is A{

    uint public b;

    constructor (){
        b=100;
        a=50;
    }

    function funB() public {
        b=10;
    }
}

//here the B is dominant in contract C . 
//sequqence: right to left ; depth first manner
//order: most based like to most drived

contract C is A,B{

}
