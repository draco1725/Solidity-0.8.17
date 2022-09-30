// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//ternary operator= its a replacement for if&else not elseif

contract ternaryOper{

    function fun(uint _x) public pure returns(string memory){

        string memory val;

        // if(_x>100){
        //     val = "greater";
        // }
        // else{
        //     val = "equal or smaller";
        // }

        val = _x>100 ? "greater" : "equal or smaller";

//? =  its a ternary opertaor
        return val;
    }

}
