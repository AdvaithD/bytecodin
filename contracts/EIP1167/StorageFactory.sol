pragma solidity ^0.4.23;

import "./Storage.sol";
import "https://github.com/optionality/clone-factory/blob/master/contracts/CloneFactory.sol";

contract StorageFactory {
    address oublic admin;
    address public implementaiton;
    address[] public clonedContracts;
    event ClonedContract(address _clonedContract);
    // old way of specifying constructor
    function StorageFactory(address _implementation) public {
        admin = msg.sender;
        implementation = _implementation;
    }
    function createStorage() {
        require(msg.sender == admin, 'ADMIN ONLY')
        // create clone of the storage smart contract
        address clone = createClone(implementation);
        clonedContracts.push(clone)
        // Storage(clone).init(myArg); // <-- how to initialize clone
        emit ClonedContract(clone);
    }

    function getAddress(uint i) view external returns(address) {
        return clonedContracts[i]
    }

}