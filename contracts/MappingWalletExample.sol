// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract MappingStructExample {

    mapping (address => uint) public addressToEthersMapping;
    
    function Diposit () public payable {    
        addressToEthersMapping[msg.sender] += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawMony(address payable _to, uint _amount) public {
        require(_amount <= addressToEthersMapping[msg.sender], "Not enough fund");
        addressToEthersMapping[msg.sender] -= _amount;
        _to.transfer(_amount);
    }

    function withdrawAllFund(address payable _to) public {
        uint sendMony = addressToEthersMapping[msg.sender];
        addressToEthersMapping[msg.sender] = 0;
        _to.transfer(sendMony);
    }
}