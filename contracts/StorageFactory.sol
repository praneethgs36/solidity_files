// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage  = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorage);
    }

    function sfStore(uint256 _index, uint256 _favoriteNumber) public {
        SimpleStorage simpleStorage = listOfSimpleStorageContracts[_index];
        simpleStorage.store(_favoriteNumber);
    }

    function sfGet(uint256 _index) public view returns (uint256) {
        return listOfSimpleStorageContracts[_index].retrieve();
    }

}