// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract test{//wallet
    //state address variable that can send eth 
    address payable public owner;

    //initalizing ownership
    //owner is set to msg.sender when contract is deployed
    //msg.sender is the address that deploys the contract
    constructor(){
        owner=payable(msg.sender);
    }

    //only be able to execute modified function if conditions are met
    modifier ownerOnly(){
        require(msg.sender==owner, "Not Owner");
        _;//execute modifier
    }

    //will receive any eth sent to the contract
    function recieve() external payable{}

    //returns the balance
    function getBalance() external view returns (uint){
        return address(this).balance;
    }

    // Function to transfer Ether from this contract to address from input
    function transfer(address payable _to, uint _amount) external ownerOnly{
        // Note that "to" is declared as payable
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}
//npx truffle console
//let contract=await test.deployed()
//let accounts=await web3.eth.getAccounts()
//contract.recieve.sendTransaction({from: accounts[0], value: 2000000})
//await contract.transfer(accounts[1],100000)