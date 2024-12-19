// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract ExampleWrapAround {
    uint8 public myUint8 = 250;

    function incrementUint8() public {
        myUint8++;
    }

    function decrementUint8() public {
        myUint8--;
    }
 
}