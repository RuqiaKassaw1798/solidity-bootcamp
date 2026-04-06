// SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

import "forge-std/Test.sol";
import "../src/Bank.sol";

contract BankTest is Test {
    Bank public bank;
    address user = makeAddr("user"); 

    function setUp() public {
        bank = new Bank();
        vm.deal(user, 100 ether); 
    }

    function testDeposit() public {
        vm.prank(user); 
        bank.deposit{value: 10 ether}();
        assertEq(bank.getBalance(user), 10 ether);
    }

    function testCannotWithdrawMoreThanBalance() public {
        vm.startPrank(user);
        bank.deposit{value: 5 ether}();
        
        vm.expectRevert("Cannot withdraw more than balance");
        bank.withdraw(6 ether);
        vm.stopPrank();
    }

    function testFuzzDeposit(uint256 amount) public {
        vm.assume(amount > 0 && amount <= 100 ether); 
        
        vm.prank(user);
        bank.deposit{value: amount}();
        assertEq(bank.getBalance(user), amount);
    }
}