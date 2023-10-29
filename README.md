# Basic NFT Marketplace end to end

### Smart Contract

- **\_tokenIds**: This is the latest token ID that corresponds to an NFT minted with this smart contract. `tokenIDs` map to `tokenURI` which is the URL that contains the metadata of the corresponding NFT.

- **\_itemsSold**: Is a count of the number of items sold on the marketplace.

- **owner**: This is the owner of the smart contract. The only address that can issue a withdrawal request.

- **listPrice**: The price (in ETH) any user needs to pay to list their NFT on the marketplace.

- **ListedToken**: A solidity struct (similar to Javascript object) dictating the format an NFT's data is stored in.

- **TokenListedSuccess**: Event emitted when a token is successfully listed.

- **idToListedToken**: It is the mapping of all existing tokenId's to the corresponding NFT token.

### createToken and createListedToken

This function turns a tokenURI (URL with metadata) into an actual NFT on-chain, with details stored in the smart contract. This is useful for the **List your NFT page**.

### getAllNFTs

This function returns all the "active" NFTs (currently on sale) in the marketplace. This is useful for the **marketplace home page**.

### getMyNFTs

This function returns all the "active" NFTs (currently on sale) in the marketplace, that the current logged in user owns. This is useful for **the profile page**.

### executeSale

When a user clicks "Buy this NFT" on the profile page, the `executeSale` function is triggered.

If the user has paid enough ETH equal to the price of the NFT, the NFT gets transferred to the new address and the proceeds of the sale are sent to the seller.

### Other Helper functions
Other helper functions, which are good to have in the smart contracts for testing and would be helpful if you decide to extend more functionalities.