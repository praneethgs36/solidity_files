//SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract SimpleStorage {
    
    uint256 public myFavoriteNumber;
    
    struct Person {
        uint256 favoriteNumbers;
        string name;
    }

    // Person public pat = Person(7, "Pat");
    Person[] public listOfPeople;
    

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    } 
}
