// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*Enums restrict a variable to have one of only a few predefined values. 
The values in this enumerated list are called enums.

With the use of enums it is possible to reduce the number of bugs in your code.

For example, if we consider an application for a fresh juice shop, 
it would be possible to restrict the glass size to small, medium, and large. 
This would make sure that it would not allow anyone to order any size other than small, medium, or large.
*/

//Its a user define data type
//Compare it with boolean
//bool= false 0; true 1
//choices more than 2 that time we use enums

contract Enums{
    
    enum Status{

        Pending, //0
        Shipped, //1
        Accepted, //2
        Rejected, //3
        Cancel  //4
    }

    Status public status;

    function getStatus() public view returns(Status){
        return status;
    }

    function setStatus(Status _status) public {
        status = _status;
    }

    function rejectStatus() public{
        status = Status.Rejected;
    }

    function resetStatus() public{
        delete status;
    }

}
