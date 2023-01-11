// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract test{

    //state variable
    string public message;

    //constructor is an optional function that is only called once when the contract is deployed 
    constructor(){
        message="Hello World";
    }

    //sets message
    //memory stores input from user
    function setMessage(string memory input) public returns(string memory){
    
        //message must not be empty
        require(bytes(input).length>0);

        //set new message
        message=input;
        return message;
  }
}
