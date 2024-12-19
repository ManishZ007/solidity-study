// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;


contract String {
    string public myString = "Hello World";
    bytes public myBytes = "Hello World";

    function changeString (string memory _myString) public {
        myString = _myString;
    }

    function compairetTwoString (string memory _myString) public view returns (bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    }

    function lengthOfByte() public view returns (uint) {
        return myBytes.length;
    }


}