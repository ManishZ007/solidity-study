// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract UnSignedInt {
    uint256 public MyUint; //0-(2^256)-1

    uint8 public MyUint8; //0-(2^8)-1 = 255

    int public myInt; //-2^255 to (2^255)-1

    function setValueInUint256(uint256 _myUint) public {
        MyUint = _myUint;
    }

    function incrementUint8 () public {
        MyUint8++;
    }

    function decrementUint8() public {
        MyUint8--;
    }

    function incrementInt() public {
        myInt++;
    }
}