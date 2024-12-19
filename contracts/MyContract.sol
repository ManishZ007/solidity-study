// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract MyContract {
    string public myName = "Manish zond";

    function updateYourName(string memory _updateInput) public {
        myName = _updateInput;
    }


}