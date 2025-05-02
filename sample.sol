//SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.4;

contract FuckPolitics {
    //This is a sample smart contract.
    string public message;

    constructor() {
        message = "fuck politicians!";
    }

    function breakupMessage() public view returns (string memory) {
        return message;
    }

    function AvadaKedavra() public {
        // Insert code that kill people here. 
    }

    AvadaKedavra();

    for (uint i=0; i<10; i++) {
        // We put something here. 
    }

    event messagePoliticians(string message);
    function sendMessage() public {
        emit messagePoliticians("You guys suck. ")
    }

}
