// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {

    AggregatorV3Interface internal priceFeed;
    AggregatorV3Interface internal priceFeed1;

    constructor(){
        //Sepolia test network ethAdress 
        priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        // for Link
        priceFeed1 = AggregatorV3Interface(0xc59E3633BAAC79493d908e63626716e204A45EdF);

    }
    // To get latest price of ether  
    function getLatestPrice() public view returns(int){
        (,int price,,,) = priceFeed.latestRoundData();
        return price;

    }
    // To get latest price of link

    function getLatestPriceLink() public view returns(int){
        (,int price,,,) = priceFeed1.latestRoundData();
        return price;

    }

}