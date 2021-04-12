pragma solidity ^0.7;

contract MinimalProxy {
    function clone(address target) external returns (address result) {
        // convert address to 20 bytes
        bytes20 targetBytes = bytes20(target);
        assembly {
            // 0x40 - free memory pointer in solidity
            let clone := mload(0x40) // read 32bytes stored at memory addr: 0x40
            // store 32 bytes to memory starting at the clone pointer
            mstore(clone, )
            // store 20 to the bytes
            mstore(add(clone, 0x14), targetBytes)
        }
    }
}