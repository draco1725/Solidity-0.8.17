// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract localvariable {

    uint public age;
    bool public b;
    address public newAdd;

//bool =  true or false
//local variable: its made inside the function 

    function fun(uint _x, bool _y, address _z) public returns(uint, bool){
//this belowlines are local variable 

        uint i = 29;
        bool b1 = true;

//this below lines are made when we have to change any local variable 
        i+=29; 
        b1 = false; 


        age = _x;
        b = _y;
        newAdd = _z;

        return (i,b1);
    }

}