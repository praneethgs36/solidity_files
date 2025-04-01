//SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.4;

contract FuckPolitics {
    //This is a sample smart contract.
    string public message;

    constructor() {
        message = "fuck you politicians!";
    }

    function breakupMessage() public view returns (string memory) {
        return message;
    }
}
