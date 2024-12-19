// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;


contract SendMany {
    uint public balanceRecevied;

    function deposit() public payable {
        balanceRecevied += msg.value;
    }

    function gteContractBalence() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(gteContractBalence());
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(gteContractBalence());
    }


}