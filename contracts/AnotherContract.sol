// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AnotherContract {
    string public greeting = "Hello from AnotherContract!";

    function setGreeting(string memory newGreeting) public {
        greeting = newGreeting;
    }
}
