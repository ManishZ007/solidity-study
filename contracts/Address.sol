// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Address {
    address public someAddress;

    function setSomeAddress(address _someAddress) public  {
        someAddress = _someAddress;
    }

    function fetchBalance () public view returns (uint) {
        return someAddress.balance;
    }
}