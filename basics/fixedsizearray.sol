// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract fixedsizedarray{

//here we put our index 5 so only 5 numbers here not more than that
//here its a state variable
    uint[5]  arr ;


//how to return an array

    constructor(){
        arr = [10,20,30,40,50];
    }

    function returnArray() public view returns(uint[5] memory){
        return arr;
    }




//inside function how to use array and how to return

    function createArray() public pure returns(uint){
//in memory we can only make fixed size arrary not dynamic size

        uint[] memory arrMem = new uint[](3);
        arrMem[1] = 33;

        return arrMem[1];
    }




//how to use "for loop" integrated with array 
    function arraywithLoop(uint _x) public {

        for(uint i=0; 1<arr.length; i++){
            arr[1] = _x+i;
        }
    






//method: length, update, delete, get


    //function array() public view returns(uint){
    // //get (here we did add view)    
    //     uint temp;
    //     temp = arr[2];

    // //update (here we removed view)
    //     //arr[2] = 2000;

    //delete
    //     delete arr[4];

    //length
        //uint len = arr.length;

    //return len;
        
       
    }

        

}
