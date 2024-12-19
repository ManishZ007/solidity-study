// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;


contract MappingPractice {
    mapping (uint => bool) public uintToBoolMapping;
    mapping (address => bool) public addressToBoolMapping;
    mapping (uint => mapping(uint => bool)) public uintToUintToBoolMapping;

    
    function setUintToBoolMapping(uint _index) public {
        uintToBoolMapping[_index] = true;
    }

    function setAddressToBoolMapping () public {
        addressToBoolMapping[msg.sender] = true;
    }

    function setUintToUintToBoolMapping(uint _index1, uint _index2) public {
        uintToUintToBoolMapping[_index1][_index2] = true;  
    }



}