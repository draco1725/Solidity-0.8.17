// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract functionIntro{

    uint  age = 20;

//uint here is a variable defined

    function add(uint _x, uint _y) public pure returns (uint){
        return _x + _y;
    }

    function changeAge() public {
        age+=1;
    }

    function getage() public view returns (uint) {
        return age;
    }

    function fun() internal {
        //code;
    }

}

//this wont work because its not imported into the contract
function dummy(uint _x) pure returns(uint) {
    return _x*10;
}