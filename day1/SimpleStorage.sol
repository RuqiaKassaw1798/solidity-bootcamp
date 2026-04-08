// SPDX-License-Identifier: UNLICENCED
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 public favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // Bonus Task: Increment function
    function increment() public {
        favoriteNumber += 1;
    }
}
