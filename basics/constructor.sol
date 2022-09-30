// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//constructor: its a special function, 
//1 contract only 1 constct can be used
//its deployed at the initated stage

contract Constructor{

    uint public age;
    address public owner;
    string public name;


    constructor(string memory _name, uint _age, address _owner){
        name = _name;
        age =_age;
        owner = _owner;
    }

}
