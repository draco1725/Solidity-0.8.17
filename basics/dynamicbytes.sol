// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//DBytes: it has 2 mehtod extra  push:pop

contract dynamicBytes{

    bytes public temp1;

    constructor(){

        temp1 =  "123abcde45";
    }

    //push
    function pushElement() public {
//here the 'c' value which is 63 will be added in the last 
        temp1.push('c');
    }

    //pop
    function popElement() public {
//here it will delete the last index number which here it is "35" and if the function is call again it will delete another number       
        temp1.pop();
    }

    //length
    function getLength() public view returns(uint){
//here it will define the lenght of temp1        
        return temp1.length;
    }

    //get
    function getElement(uint _idx) public view returns(bytes1){
//here we are calling the index value any number we wanna see
        return temp1[_idx];
    } 
}
