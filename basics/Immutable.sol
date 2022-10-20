// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;


//Immutable: Variables declared as immutable are a bit less restricted than those declared as constant. 
//a) Immutable variables can be assigned an arbitrary value in the constructor of the contract or at the point of their declaration. 
//b) They cannot be read during construction time and can only be assigned once.

contract Immutable{

    address public immutable owner;
    address public constant owner2 = address(1);
    address public owner3 = address(1);


    constructor(address _owner){
        owner = _owner;
    }

    function I() public view returns(address){
        return owner;
    }

    function C() public view returns(address){
        return owner;
    }   

    function K() public view returns(address){
        return owner;
    }    
}
