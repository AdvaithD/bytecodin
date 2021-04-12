pragma solidity ^0.6.10;

contract FindTheHash {
    bytes32 constant public hash = 0x148328afasf; // TODO: find proper 32byte hash

constructor() public payable {}

function solve(string memory solution) public {
    require(hash == keccak256(abi.encodePacked(solution)), "Wrong!");
    (bool ok, ) = msg.sender.call{value: address(this).balance}("");
    require(ok, "failed to send eth");
    }
}