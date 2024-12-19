// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Sender {

    receive() external payable { }

    function withdrawTransfer (address payable _to) public {
        _to.transfer(10);
    }

    function withdrawSend (address payable  _to) public  {
        bool sebdSuccessfull = _to.send(10);
        require(sebdSuccessfull, "error while sending");
    }

}


contract ReceiverNotAction {
    function balance () public view returns (uint) {
        return address(this).balance;
    }

    receive() external payable { }
}

contract ReceiveAction {
    uint public contractBalance;

    function balance () public view returns (uint) {
        return address(this).balance;
    }

    receive() external payable { 
        contractBalance += msg.value;
    }

}

