// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract MsgSenderObject {
    address public someAddress;

    function updateAddress() public {
        someAddress = msg.sender;
    }
}