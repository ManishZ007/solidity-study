// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract WillError {
    error NotAllowedError(string);

    function errorFunction() public pure {
        // require(false, "This is error");
        // assert(false);
        revert NotAllowedError("you are not allowed");

    }
}

contract CatchError {

    event ErrorLogging(string reason);
    event ErrorLogCode(uint code);
    event ErrorLowLevelData(bytes data);

    function catchError() public  {
        WillError will = new WillError();
        try will.errorFunction() {
            // rest of code 
        }catch Error(string memory reason) {
            emit ErrorLogging(reason);
        }catch Panic(uint errorCode) {
            emit ErrorLogCode(errorCode);
        } catch (bytes memory lowLevelData) {
            emit ErrorLowLevelData(lowLevelData);
        }
    }
}