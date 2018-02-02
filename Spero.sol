pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Spero is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Spero(address _owner)  UpgradeableToken(_owner) {
    name = "Spero";
    symbol = "SPR";
    totalSupply = 200000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}