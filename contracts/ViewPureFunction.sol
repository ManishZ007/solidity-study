// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ViewPureFunction {
    uint public myStorageVariable;

    function getStorageVariable () public view returns(uint) {
        return myStorageVariable;
    }

    function myAddition(int a, int b) public pure returns(int) {
        
        return a + b;
    }

    function setMyStorageVariable(uint _myVar) public returns(uint) {
        myStorageVariable = _myVar;
        return _myVar;
    }


}