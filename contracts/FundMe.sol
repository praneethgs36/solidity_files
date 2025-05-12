// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

// IMPORTS

import {PriceConverter} from "./PriceConverter.sol";
using PriceConverter for uint256;

contract FundMe {

// STATE VARIABLES

    uint256 constant MINIMUM_USD = 5e18;
    
    address[] public funders;
    
    mapping(address => uint256) public addressToAmountFunded;

    address public immutable i_owner;

// MODIFIERS

    modifier onlyOwner() {
        require(msg.sender == i_owner, 'must be owner');
        _;
    }

// FUNCTIONS

    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {
         
        require(msg.value.getConversionRate() >= MINIMUM_USD, "Please send more eth. ");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw()public onlyOwner {
        
        // loop through the addresses and reset the mapping. 
        for (uint256 funderIndex = 0; funderIndex < funders.length  ; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }

        // reset the array
        funders = new address[](0);
        
        // withdraw the funds
        // payable(msg.sender).transfer(address(this).balance);

        // bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // require(sendSuccess, "Send failed. ");

        (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call Failed.");

    }

} 