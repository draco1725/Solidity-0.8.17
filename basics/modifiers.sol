// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

//its a special type of functions
//code resuseability
//we can make unlimited modifier
//we can use that code in many functions as the same code is in reuse so why to type it when you modifier

contract auction{

    address public owner=msg.sender;

    modifier onlyOwner(){
        require(owner == msg.sender,"you are imposter");
        _;
    }

    function startauction() public view onlyOwner{
        //code
    }

    function stopauction() public view onlyOwner{

    }


//here we see how to pass input in modifier

    uint public age=30;

    modifier temp(uint _x){
        age=age+_x;
        _;
    }

    function changeAge(uint _y) public temp(_y){
        
    }
}
