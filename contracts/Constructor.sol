// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Constructor {
    address public myAddress;

    constructor () {
        myAddress = msg.sender;
    }

    function setAddress(address _myAddress) public  {
        myAddress = _myAddress;
    }

    function setAddressByMsgSender () public {
        myAddress = msg.sender;
    }

}