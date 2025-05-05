// get funds from users
// Retrieve funds from the contract
// Set a minimum sending value

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FundMe {

    uint256 minimumUSD = 5;

    function fund() public payable {
        require(msg.value >= minimumUSD, "Please send more eth. ");

    }

}