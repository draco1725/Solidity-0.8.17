// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Ownable{
    address public owner;

/*owner is the variable here 
it has a value type of address because we store account address here 
*/

    constructor(){
        owner = msg.sender;
    }

//msg.sender =  the person who deploys the contract it displays the address of them. its a global variable

    modifier onlyOwner(){   
        require(msg.sender == owner,"not a owner");
        _;
    }

//modifier = its a special function which checks for permission whetehr its following the function or not
// _; = it says like if the above statement is done so proceed furthur

    function setOwner(address _newOwner) public onlyOwner{
        require(_newOwner != address(0),"Invalid Address");
        owner = _newOwner;
    }

// _newowner = in function whenever we set parameters it starts with "_". we can still use them without that also. its a standard procedure
// address(0) = the newOwner address shouldn't be just 0

    function onlyOwnerCanAccess() public onlyOwner{
        //code
    }

    function anyOneCanAccess() public {
        //code
    }
}