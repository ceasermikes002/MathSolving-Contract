// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MathSolver {
    function calculate(uint256 a, uint256 b, string memory operation) public pure returns (uint256) {
        if (keccak256(bytes(operation)) == keccak256(bytes("+"))) {
            return a + b;
        } else if (keccak256(bytes(operation)) == keccak256(bytes("-"))) {
            return a - b;
        } else if (keccak256(bytes(operation)) == keccak256(bytes("*"))) {
            return a * b;
        } else if (keccak256(bytes(operation)) == keccak256(bytes("/"))) {
            require(b != 0, "Division by zero");
            return a / b;
        } else {
            revert("Invalid operation");
        }
    }
}
