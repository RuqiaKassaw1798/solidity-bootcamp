// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenRegistry {
    struct Token {
        string name;
        string symbol;
        address owner;
        bool isActive;
    }

    mapping(uint256 => Token) public tokens;
    uint256[] public tokenIds;
    uint256 private nextId = 1;

    event TokenRegistered(uint256 indexed id, string name, address owner);

    function registerToken(string memory _name, string memory _symbol) public {
        require(bytes(_name).length > 0, "Empty name");
        require(bytes(_symbol).length > 0, "Empty symbol");

        tokens[nextId] = Token({
            name: _name,
            symbol: _symbol,
            owner: msg.sender,
            isActive: true
        });

        tokenIds.push(nextId);
        emit TokenRegistered(nextId, _name, msg.sender);
        nextId++;
    }

    function deactivateToken(uint256 _id) public {
        require(msg.sender == tokens[_id].owner, "Not owner");
        tokens[_id].isActive = false;
    }

    function getToken(uint256 _id) public view returns (string memory, string memory, address, bool) {
        Token memory t = tokens[_id];
        return (t.name, t.symbol, t.owner, t.isActive);
    }

    function getAllTokenIds() public view returns (uint256[] memory) {
        return tokenIds;
    }
}
