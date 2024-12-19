// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Practice {

    uint public balanceRecived;

    function deposit() public payable {
        balanceRecived += msg.value;
    }

    function getContractDetail() public view returns(uint) {
        return address(this).balance;
    }

    function widthdrawAll () public   {
        address payable to = payable(msg.sender);
        to.transfer(getContractDetail());
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(getContractDetail());
    }

}