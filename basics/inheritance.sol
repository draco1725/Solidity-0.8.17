// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

//its like parent and child relation
//it has "virutal"  and "overide"


contract A{

    uint public a=100;
    address public owner = msg.sender;



    function fun1() public pure returns(string memory){
        return "returns value A";
    }

    function fun2() public pure returns(string memory){
        return "returns value A";
    }

    function fun3() public pure virtual returns(string memory){
        return "returns value A";
    }

    function fun4() public pure virtual returns(string memory){
        return "returns value A";
    }

}

//lets make all function from contract A in B contract
//so now B is the child of contract A

contract B is A{
    

//now lets chnage some chnages in fun3 and fun4
//virtual = permission given from A to make changes in B 
//override: when changes are done in B we use this keyword

    function fun3() public pure override returns(string memory){
        return "returns value B";
    }

    function fun4() public pure virtual override returns(string memory){
        return "returns value B";
    }
}

//now lets the make another contract with C and he will be the child of parent B
//here C is a grandchild because it has contract B functionality and Contract B has all functions of Contr A.

contract C is B{

    function fun4() public pure override returns(string memory){
        return "returns value C";
    }
}
