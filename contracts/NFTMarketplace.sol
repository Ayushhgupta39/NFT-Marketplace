//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTMarketplace is ERC721URIStorage {
    // Counters.Counter is a struct type provided by the Counters library. 
    using Counters for Counters.Counter;

    // _tokenIds has the most recent minted tokenId
    Counters.Counter private _tokenIds;

    // _itemsSold keeps the track of the number items sold on Marketplace.
    Counters.Counter private _itemsSold;

    // Owner is the contract address that created the smart contract.
    address payable owner;

    // The fee charged by the marketplace to be allowed to list an NFT.
    uint256 listPrice = 0.01 ether;

    // This is the stucture to store info about a listed token.
    struct ListedToken {
        uint256 tokenId;
        address payable owner;
        address payable seller;
        uint256 price;
        bool currentlyListed;
    }

    // This event will emit when a token is successfully listed.
    event TokenListedSuccess (
        uint256 indexed tokenId,
        address owner,
        address seller,
        uint256 price,
        bool currentlyListed
    );

    constructor () ERC721 ("NFTMarketplace", "NFTM") {
        owner = payable(msg.sender);
    }


}