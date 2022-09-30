// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


/*
view: these are read only > blockchain , state variable , global variable. no updation, no change in view function (no write)
pure: it doesnot do anything
simple: it chnage the state variable 
*/

contract viewAndPureAndSimple{

    uint public age  = 10;

    function viewFunction() public view returns(uint){
        return age;
    }

    function pureFunction() public pure returns(uint){
        return 1;
    }

    function pureFunction1(uint _x) public pure returns(uint){
        return _x;
    }

    function simpleFucntion() public{
        age = age+10;
    }

}