//SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract chai1 {
    struct memo {
        string name;
        string message;
        uint timestamp;
        address from;
    }

    memo[] memos;
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function buyChai(string memory name, string memory message) public payable {
        require(msg.value >= 0, "please pay greater than zero ether");
        owner.transfer(msg.value);
        memos.push(memo(name, message, block.timestamp, msg.sender));
    }

    function getMemos() public view returns (memo[] memory) {
        return memos;
    }
}
