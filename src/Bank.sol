// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.33;

contract Bank {
    mapping(address => uint256) public balances;

    event Deposit(address indexed user, uint256 amount);
    event Withdrawal(address indexed user, uint256 amount);

    function deposit() public payable {
        require(msg.value > 0, "Deposit must be greater than 0");
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Cannot withdraw more than balance");
        
        balances[msg.sender] -= _amount;
        (bool success, ) = payable(msg.sender).call{value: _amount}("");
        require(success, "Transfer failed");
        
        emit Withdrawal(msg.sender, _amount);
    }

    function getBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}