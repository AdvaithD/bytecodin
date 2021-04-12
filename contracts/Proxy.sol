pragma solidity ^0.7;

// Minimal Proxy contract
// uses delegatecall

contract PsuedoProxy {
    address master;

    constructor(address _master) {
        master = _master;
    }

    function forward() external returns (bytes memory) {
        (bool success, bytes memory data) = master.delegatecall(msg.data);
        require(success);
        return data;
    }
}