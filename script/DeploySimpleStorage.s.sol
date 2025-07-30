//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "forge-std/Script.sol";
import {Simplestorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (Simplestorage) {
        vm.startBroadcast();
        Simplestorage simplestorage = new Simplestorage();
        vm.stopBroadcast();
        return simplestorage;
    }
}
