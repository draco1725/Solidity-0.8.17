// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//Fixed Size Bytes: here index it has hexadecimal data 
//eg: if we state bytes3 we get 3 boxes
//1 byte = 8 bit
//1 Hexadec = 4 bit
//here in 1 byte we get 2 hexadec digits
//1byte default value is "00"
//public = it creates a getter function which we than call while deploying it 

contract fixedByte{

    bytes5 public temp1;
    bytes7 public temp2;

//temp1: here we made 5 bytes we got 10 digits that means every box has 2  "00" 


//now lets set the value 
//same 3 method (a-set the value at start, b- set in constructor, c-set the value in function)

    function setValue() public {

        temp1 = "abcde";
        temp2 = "12abcde";
    }
//here the value we get are from ASCII TABLE 
//https://www.rapidtables.com/code/text/ascii-table.html

//lets get an digit here

    function getDigit() public view returns(bytes1) {
//lets call the 2 nd index value here 
        return temp1[2];
    }
//lets see the length now
    function getLength() public view returns(uint) {
        return temp1.length;
    }
    
}
