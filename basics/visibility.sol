// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

/*
Visibility: Visibility modifiers define the visibility of state variables or functions. 

Here there are 4 categories its gets divided into
a)Public: Here the contract can be called from anywhere 
b)Private: Here its getting called on via contract not visible to public 
c)External: Only functions can be marked external. External functions are part of the contract interface and can be called from other contracts and transactions. 
They can't be called internally. Always use external when you don't want to call the function from within the same contract.
d)Internal: Internal functions and state variables can both be accessed from within the same contract and in deriving contracts. 
They aren't accessible from the outside.
*/

contract visibility{

        uint private x=10;
        uint internal y=100;
        uint public z=1000;

        function check1() private pure returns(string memory){
            return "private";
        }

        function check2() internal pure returns(string memory){
            return "internal";
        }

        function check3() external pure returns(string memory){
            return "external";
        }

        function check4() public pure returns(string memory){
            return "public";
        }

  //lets call a integar
        function checkAll()  public view returns(uint){
            return x;
        }     
    
}
