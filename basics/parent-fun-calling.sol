// SPDX-License-Identifier: MIT
pragma solidity  >=0.7.0 <0.9.0;


//parent cont > funct >calling inside > child contract 
//2 methods

//direct calling

//Super Keyword

contract A{

    event log(string name,uint age);

    function fun1() public virtual {
        emit log("A",21);
    }

    function fun2() public virtual {
        emit log("A.FUN2",21);
    }
}

contract B is A{

        function fun1() public virtual override {
        emit log("B",31);
        A.fun1(); //direct calling
    }

    function fun2() public virtual override {
        emit log("B.FUN2",31);
        super.fun2(); //super keyword
    }

}

contract C is A{

        function fun1() public virtual override {
        emit log("C",41);
    }

    function fun2() public virtual override {
        emit log("C.FUN2",41);
    }

}

contract D is B,C{

        function fun1() public  override (B,C) {
        emit log("D",51);
    }

    function fun2() public override (B,C) {
        emit log("D.FUN2",51);
        super.fun2();  //here it changes on order if it gets fun2 in C only the code stops. 
        //it goes right to left . 
        //whatever order we choose it goes right to left.
    }    

}
