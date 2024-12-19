// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;


contract FallbackFunction {
    uint public latvalueSent;
    string public lastFunctionCall;
    uint public myUint;

// 0xe492fd840000000000000000000000000000000000000000000000000000000000000001
// "setMyUint(uint256)"
// by using -> web3.utils.sha3("setMyUint(uint256)") <-
// we got this 
// 0xe492fd842fb25dc4b3c624c80776108b452a545c682a78e4252b5560c6537b79
// there is 1st 8 charector after 0x is same as transation input value 

    function setMyUint(uint _newUint) public {
        myUint = _newUint;
    }

    receive() external payable { 
        lastFunctionCall = "recive";
        latvalueSent = msg.value;
    }

    fallback() external payable { 
        lastFunctionCall = "fallback";
        latvalueSent = msg.value;
    }
}