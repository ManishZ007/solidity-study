// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ContractOne {
    mapping (address => uint) public AddressToBalance;

    function balance() public view returns (uint) {
        return address(this).balance;
    }

    receive() external payable { 
        AddressToBalance[msg.sender] += msg.value;
    }
}

contract ContractTwo {
    function deposit() public payable {}

    function depositOnContractOne(address _contractOne) public  {
        (bool success, ) = _contractOne.call{value: 10, gas: 100000}("");
        require(success);
    }
    
}

