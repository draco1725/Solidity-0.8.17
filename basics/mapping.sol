// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;

//Mapping: its like setting by key values and calling the data
//it cannot be placed outisde contract not inside function also

contract Mapping {

    mapping(uint=>string) public emp_id;   //emp_id: employee id

    function setIds() public {

        emp_id[31] = "draco";
        emp_id[27] = "pratik";
        emp_id[25] = "alex";
        emp_id[56] = "piro"; 

    }

    function getId(uint _id) public view returns(string memory){

        return emp_id[_id];
    }
}



struct donor_dts{
    string name;
    uint age;
    string place;
    uint balance;
}

contract AdvancedMapp{

    mapping(address=>donor_dts) public acc_info;

    function setdts(string memory _name, uint _age, string memory _place, uint _balance) public {

//here we are setting the person who is the owner the address automatically sets

    acc_info[msg.sender] = donor_dts(_name, _age, _place, acc_info[msg.sender].balance+_balance);

/*acc_info[msg.sender].balance+ : here lets take an example. what if draco does a donation of 10 eth and 
he again makes a donation of 20eth the amount should be showed 30. thats what that thing does it checks
whether that sender has made previous donation or not and just add it up with the new donation
*/
    }
}
