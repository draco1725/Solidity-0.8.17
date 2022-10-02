// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//DSA: it has 2 method extra  push:pob 

contract dynamicSizearray{

    uint[] public arr = [10,2626,58,815,562,15,84,28,87984];

//how to return an array 
    function Returnarray() public view returns(uint[] memory){
        return arr;
    }
    

    function fun() public {

        //get
        uint temp = arr[3];

        //update
        arr[4] = 454;

        //delete
        delete arr[1];

        //length
        uint len = arr.length;

        //push
        //arr.push(111); //answer:[10,2626,58,815,562,15,84,28,87984,111] //it keeps on adding same number whenever you call the function

        //pop
        arr.pop(); //it keeps deleting the last index number 


    }
}
