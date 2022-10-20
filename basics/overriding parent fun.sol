// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

//overide function in multi-inheritance 

contract A{

    uint public a;

    constructor (){
        a=100;
    }

    function funA() public {
        a=10;
    }

    function fun() public pure virtual returns(string memory){
        return "hi im in A";
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
    function fun() public pure virtual override returns(string memory){
        return "hi im in B";
    }

}


contract C is A,B{

    function fun() public pure override(B,A) returns(string memory){  //its overidden now 
        return "hi im in C";
    }

}
