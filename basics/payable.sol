// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

//the function who has payable keyword in that contract we can send ether
//we cannot make it "pure" and "view" type 

contract Payable{

//how to make address payable

    address payable public owner = payable(msg.sender);   //it comes before values we define. we typecast it


//make constructor payable

    constructor() payable{
        
    }


    function getETH() payable public{  //in this we get ether now

    }

    //lets check the balance now

    function checkBal() public view returns(uint){
        return address(this).balance;  //this= here this keyword we used to get the balance of that specific address 
        }

}
