// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract loops{

    function CB() public pure returns(uint){

        uint count = 0;

        for(uint i=6; i<10; i+=2){

            if(i==8){
                continue; //or break;
            }

//continue: whenever the condition is true it skips the code after that whatver its written
//break: it basically stops the loop it doesnt matter how many codes are written after that and iteration also 
//it can be written anywhere in the code 

            count = count + 5;
        }

        return count;

    }
    
}    