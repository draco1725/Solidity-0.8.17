// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

contract A{

    string public name;
    uint public age;


    constructor(string memory _name, uint _age){
        name = _name;
        age = _age;
    }
}



contract B{

    string public add;
    uint public salary;


    constructor(string memory _add, uint _salary){
        add = _add;
        salary = _salary;
    }
}


//parent constru how to pass fixed and dynamic value

//fixed value

contract C is A("draco", 22),B("alex",100000){

}

contract D is A,B{

    constructor() A("draco1", 22) B("alex1",100000){

    }
}

//Dynamic Value

contract E is A,B{
    constructor(string memory _name,uint _age,string memory _add,uint _salary) A(_name,_age) B(_add,_salary){

    }
}

//how to make one parent contract fix 

contract F is A("draco1", 22),B{
    constructor(string memory _add,uint _salary) B(_add,_salary){
    }
}
