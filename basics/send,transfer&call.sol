// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

contract sendETH{

    //this is how we input a state value
    //address payable public getter = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);

    receive() external payable{}

//to check the balance of the particular address
    function checkbal() public view returns(uint){
        return address(this).balance;
    }

//msg.value = user can input how much amount
//send ether

//now lets checkout log 

    event log(uint value);

    function SEND(address payable getter) public payable{

        emit log(msg.value);

        bool sent = getter.send(msg.value);
        require(sent,"tran is failed");
    }


//send transfer

    function TRANSFER(address payable getter) public payable{
        getter.transfer(msg.value);
    }


//callback

    function CALL(address getter) public payable{

        (bool sent,) = getter.call{value:msg.value}("");
        require(sent,"tran is failed");
    }

}

//Now lets try to connect it with another contract

contract GetETH{

    receive() external payable{}
}
