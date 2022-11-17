// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.7.0;

import "./DHTToken.sol";


contract DHTSale {
    address owner;

    DHTToken public dhtContract;

    constructor(DHTToken _dhtContract) public {
        owner = msg.sender;
        dhtContract = _dhtContract;
    }

    function buyHero(uint256 _tokenId, uint256 _amount, address _from) public payable {
        dhtContract.buyToken(_tokenId, _amount, _from, msg.sender);
    }

    function giftHero(uint256 _tokenId, uint256 _amount, address _to) public payable {
        dhtContract.buyToken(_tokenId, _amount, msg.sender, _to);
    }
}
