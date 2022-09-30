// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//string is a data type

contract stringvalue{

    string public str = "gaurav"; //state variable

//if we want to make a local variable lets see below

    function checkString() public pure returns(string memory){

        string memory name = "pratik";
//here we used "memory" which is a key word it gets stored in memory as its a local variable  
        return name;
    }
   

//to give our function an input we used the following below
    function checkString1(string memory _str1) public pure returns(string memory){

        string memory name = _str1;
  
        return name;
    }
    
}