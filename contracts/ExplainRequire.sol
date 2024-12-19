// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract ExplainRequire {
    mapping (address => uint) public BalanceData;

    function receiveMoney () public payable {
        BalanceData[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= BalanceData[msg.sender], "not enough fund!");
        BalanceData[msg.sender] -= _amount;
        _to.transfer(_amount);
    }
}