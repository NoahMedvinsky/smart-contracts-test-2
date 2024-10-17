// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import Ownable from OpenZeppelin
import "@openzeppelin/contracts/access/Ownable.sol";

// Import UniswapV2Pair from Uniswap
import "@uniswap/v2-core/contracts/UniswapV2Pair.sol";

// Import another custom contract from the custom folder
import "../AnotherContract.sol";

contract MyContract is Ownable {
    UniswapV2Pair public uniswapPair;
    AnotherContract public anotherContractInstance;

    constructor(address _uniswapPair, address _anotherContractAddress) {
        uniswapPair = UniswapV2Pair(_uniswapPair);
        anotherContractInstance = AnotherContract(_anotherContractAddress);
    }

    function getPairReserves() public view onlyOwner returns (uint112, uint112) {
        return uniswapPair.getReserves();
    }

    function callAnotherContractGreeting() public view returns (string memory) {
        return anotherContractInstance.greeting();
    }
}
