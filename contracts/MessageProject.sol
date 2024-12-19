// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;


contract MessageProject {
    uint public ChangeCounter;
    address public owner;
    string public message;

    constructor () {
        owner = msg.sender;
    }

    function chnageMessage(string memory _newMessage) public {
        if(msg.sender == owner){
            message = _newMessage;
            ChangeCounter++;
        }
    }

}