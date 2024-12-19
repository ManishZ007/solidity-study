// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract Boolean {
    bool public myBool;

    function ChangeState(bool _myBool) public {
        myBool = !_myBool;
    }
}


