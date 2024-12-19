// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract StructMappingExample {
    struct Transaction {
        uint amount;
        uint timestamp;
    }

    struct Balance {
        uint totalBalance;
        uint numDeposits;
        mapping(uint => Transaction) deposits;
        uint numWithdrawals;
        mapping(uint => Transaction) withdrawals;
    }

    mapping (address => Balance) public balanceReceived;

    function getBalance(address _addr) public view returns(uint) {
        return balanceReceived[_addr].totalBalance;
    }

    function getDepositNumber(address _addr, uint _num) public view returns(Transaction memory) {
        return balanceReceived[_addr].deposits[_num];
    }

    function depositMoney() public payable {
        balanceReceived[msg.sender].totalBalance += msg.value;

        Transaction memory deposit = Transaction(msg.value, block.timestamp);
        balanceReceived[msg.sender].deposits[balanceReceived[msg.sender].numDeposits] = deposit;
        balanceReceived[msg.sender].numDeposits++;

    }

    function withdrawMoney(address payable _to, uint _amount) public payable {
        require(_amount <= balanceReceived[msg.sender].totalBalance, "not enuogh fund");
        balanceReceived[msg.sender].totalBalance -= _amount;

        Transaction memory withdraw = Transaction(_amount, block.timestamp);
        balanceReceived[msg.sender].withdrawals[balanceReceived[msg.sender].numWithdrawals] = withdraw;
        balanceReceived[msg.sender].numWithdrawals++;

        _to.transfer(_amount);

    }



}