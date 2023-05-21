// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Pic {
    string public name;
    string public picture;
    address private owner;

    event DetailsSet(string indexed _name, string _picture);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setDetails(string memory _name, string memory _picture) public onlyOwner {
        name = _name;
        picture = _picture;
        emit DetailsSet(_name, _picture);
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function getPicture() public view returns (string memory) {
        return picture;
    }
}
