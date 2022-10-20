// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

/*Fallback:
it is executed  when a non-existent is called on a contract
it is required to be marked external
it has no name
it has no arguments
it can not return anything
it can be defined one per contract
if not marked payable, it will throw execption  if contract received ether
it's main use is to directly send ETH to contract
*/

//Receive: it is also payable

contract fallback_receive{

    event log(string _fun, address _sender, uint _value, bytes _data);

//fallback  (data + ether) 

    fallback() external payable {
        emit log("fallback", msg.sender, msg.value, msg.data);
    }


//receive  (eth)


    receive() external payable{
        emit log("receive", msg.sender, msg.value, "");
    }



    function checkBal() public view returns(uint){
        return address(this).balance; 
    }

}
