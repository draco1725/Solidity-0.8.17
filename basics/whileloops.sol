// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// while (expression) {
//    Statement(s) to be executed if expression is true
// }


contract loops{

    function loop() public pure returns(uint){

        uint count = 0;

        uint j = 0;   

        while(j==1){
            count = count + 5;
            j = j+2;
        }

        return count;
    }

}
