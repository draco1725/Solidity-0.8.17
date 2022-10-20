// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

//require: gas refund 
//it requires in error in handling

//Require is an error handling global function in solidity which is basically operates in the manner that if the condition within require comes out to be true then the compiler will execute the piece of code written beneath it

contract Require{

    address public owner = msg.sender;
    uint public age = 25;

    function CheckRequire(uint _x) public {

//state variable change
        age = age+5;
        require(_x>2,"Please try again");

    }

    function onlyOwner() public {

        require(owner==msg.sender,"FRAUDDDDDDD!!!!");

        age = age-2;
    }
}
