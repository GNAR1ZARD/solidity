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

    // Function to transfer Ether from this contract to address from input
    function transfer(address payable _to, uint _amount) external{
        // Note that "to" is declared as payable
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}
//let contract=await test.deployed()
//let accounts = await web3.eth.getAccounts()
//contract.recieve.sendTransaction({from: accounts[0], value: 2000000})
//await contract.transfer(accounts[1],100000)