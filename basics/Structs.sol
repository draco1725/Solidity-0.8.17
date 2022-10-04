// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

//Struct: Struct types are used to represent a record.

//it definds a data type in which we use multiple data types

//for eg: employee (data type) what it stored name,age,salary and address
//and when we call employee in struct we get the following data 
/* can make struct outisde the contract, inside the contract and even inside the function but we have 
to use memory keyword.
*/

//we can make the struct outside the contract also just defind the values you want


struct Emp{
        string name;
        uint age;
        address acc;
    }




contract Struct{

    struct Emp{
        string name;
        uint age;
        address acc;
    }
//here we declare 
    Emp public emp;

//here how we set values
    // constructor(string memory _name, uint _age, address _acc){
    //     emp.name = _name;
    //     emp.age = _age;
    //     emp.acc = _acc;
    // }


//how to initlaize
    Emp[] public emps;

    function setValues() public {
//by this 3 methods we can geneate a value
        Emp memory emp1 = Emp("draco",22,0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        emp = emp1;
        Emp memory emp2 = Emp({acc: msg.sender, name:"draco1", age:24});

        Emp memory emp3;

        emp3.name = "draco3";
        emp3.age = 34;
        emp3.acc = 0x17F6AD8Ef982297579C203069C1DbfFE4348c372;

//here we pushed our values into array
        emps.push(emp1);
        emps.push(emp2);
        emps.push(emp3);

//another method
        emps.push(Emp("rohan", 34 , msg.sender));

//updation
        Emp storage emp_temp = emp;
        emp_temp.name = "alex";   
        
                 //or 

         emp.name = "alex1";


//how to put udation inside array

    Emp storage emp_temp = emps[2];  //now its referring to name "draco3"
    emp_temp.age = 32;

//Delete

    delete emp_temp.acc;   //here its specific value we are deleting 

    delete emps[2];  //here we are deleting all the values 

    }


//now we can add one more contract here and we can use the same values

contract Struct2{
    Emp public emp_struct2 = Emp("shiva",33,msg.sender);
}  
