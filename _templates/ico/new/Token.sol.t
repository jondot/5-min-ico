---
to: contracts/<%= coin %>Token.sol
---
pragma solidity ^0.4.19;
import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract <%= coin %>Token is MintableToken {
    string public constant name = "<%= coin %>Token";
    string public constant symbol = "<%= sym.toUpperCase() %>";
    uint8 public constant decimals = <%= decimals %>;
}
