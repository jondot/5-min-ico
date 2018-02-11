---
to: contracts/<%= coin %>Crowdsale.sol
---
pragma solidity ^0.4.19;

import "zeppelin-solidity/contracts/crowdsale/Crowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/CappedCrowdsale.sol";
import "zeppelin-solidity/contracts/crowdsale/RefundableCrowdsale.sol";
import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "./<%= coin %>Token.sol";

contract <%= coin %>Crowdsale is CappedCrowdsale, RefundableCrowdsale {
    function <%= coin %>Crowdsale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet, uint256 _cap, uint256 _goal) public
    CappedCrowdsale(_cap)
    FinalizableCrowdsale()
    RefundableCrowdsale(_goal)
    Crowdsale(_startTime, _endTime, _rate, _wallet) 
    {
        require(_goal <= _cap);
    }

    function createTokenContract() internal returns (MintableToken) {
        return new <%= coin %>Token();
    }
}