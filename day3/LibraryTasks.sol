// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


// for the calculator to be complete i have added a few additional operations

// This is the "Toolbox"(The Library)
library MathLib {
    
    // Addition
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    // Subtraction with safety check (Underflow protection)
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        // 'require' ensures the math doesn't result in a negative number
        require(b <= a, "MathLib: Underflow - Result cannot be negative");
        return a - b;
    }

    // Multiplication
    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    // Division with safety check
    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        // Cannot divide by zero in Math!
        require(b > 0, "MathLib: Cannot divide by zero");
        return a / b;
    }

    // Modulus (Finding the remainder)
    function modulus(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "MathLib: Modulo by zero");
        return a % b;
    }
}

//  This is where we call the tools(THE CONTRACT)
contract Calculator {
    // This KEYWORD connects our library tools to all uint256 numbers
    using MathLib for uint256;
    
    function doAddition(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a.add(_b);
    }

    function doSubtraction(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a.sub(_b);
    }

    function doMultiplication(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a.multiply(_b);
    }

    function doDivision(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a.divide(_b);
    }

    function doModulus(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a.modulus(_b);
    }
}
