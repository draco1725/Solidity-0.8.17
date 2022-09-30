// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract stateIntro {

    uint public salary;

    constructor() {
        salary = 10000;
    }

    function setSalary() public {
        salary = 2000;
    }

//these are 3 option you can initalze a state variable 
//its stores in storage (blockchain)


}