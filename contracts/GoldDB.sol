pragma solidity ^0.4.4;

contract GoldDB {
    struct Item {
        bytes32 hash;
        uint sum;
        uint weight;
    }

    uint public lastID;
    Item[] items;

    function GoldDB() {
        items.push(Item(0,0,0));    // init
        lastID = 0;
    }

    function setItem(bytes32 _hash, uint _sum, uint _weight) {
        items.push(Item(_hash, _sum, _weight));
        lastID = items.length - 1;
    }

    function getItem(uint id) constant returns (bytes32 hash, uint sum, uint weight) {
        Item memory it = items[id];
        return (it.hash, it.sum, it.weight);
    }
}
