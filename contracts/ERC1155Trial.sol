pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";


contract ERC1155Trial is ERC1155, Ownable {

    string public name;
    string public symbol;
    uint256 public tokenCount;
    string public baseUri;

    constructor(string memory _name, string memory _symbol, string memory _baseUri) ERC1155(_baseUri){
        name = _name;
        symbol = _symbol;
        baseUri = _baseUri;
    }

    function mintNFT(address recipient, uint copies) public onlyOwner {
        tokenCount += 1;
        _mint(recipient, tokenCount, copies, "");
        
    }

    //Take a url and add token id
    function uri(uint256 _tokenId) override public view returns(string memory) {
        return string(
            abi.encodePacked(
                baseUri, //url
                Strings.toString(_tokenId), //+ tokenid
                ".json" //.json
            )
        );
    }

}