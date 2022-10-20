// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

/*
Event is an inheritable member of a contract. 
An event is emitted, it stores the arguments passed in transaction logs. 
These logs are stored on blockchain and are accessible using address of the contract till the contract is present on the blockchain. 
An event generated is not accessible from within contracts, not even the one which have created and emitted them.
*/
contract Event{

    event balance(address account,string message, uint val);

    function setData(uint _val) public {
        emit balance(msg.sender, "has value", _val);   //it stores in blockchain
    }
}


//Indexing : "indexed" this can only be used in 3 param

contract chatApp{

    event chat(address indexed _from, address _to, string message);

    function sendMess(address to_, string memory message_) public{

        emit chat(msg.sender, to_,message_);
    } 
}
