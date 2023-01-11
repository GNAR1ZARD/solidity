// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract test{//wallet
    // //address variable that is public and can have funds deposited 
    // address payable public owner;

    // constructor(){
    //     owner=payable(msg.sender);
    // }

    //will receive any eth sent to the contract
    function recieve() external payable{}

    //returns the balance
    function getBalance() external view returns (uint){
        return address(this).balance;
    }

    // function withdraw(uint _amount) external {
    //     require(msg.sender == owner, "caller is not owner");
    //     payable(msg.sender).transfer(_amount);
    // }
}
//let accounts = await web3.eth.getAccounts()
//contract.recieve.sendTransaction({from: accounts[0], value: 2000000});