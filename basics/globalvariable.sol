// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//global variable = its a predefined variable    
//example: msg.sender

contract globalvaribale{

    address public myadd = msg.sender;
    uint public time = block.timestamp;
    uint public diff = block.difficulty;
    uint public gascost = tx.gasprice;

//these all are examples of global variable


}

