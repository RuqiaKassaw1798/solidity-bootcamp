// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// The Parent Contract (Base Class)
contract Animal {
    function speak() public pure virtual returns (string memory) {
        return "Generic animal sound";
    }
}
// The dog and the cat are an animal(inheritance keyword)
contract Dog is Animal {
    function speak() public pure override returns (string memory) {
        return "Bark"; 
    }
}
contract Cat is Animal {
    function speak() public pure override returns (string memory) {
        return "Meow";
    }
}
