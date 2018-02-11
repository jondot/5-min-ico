---
to: migrations/2_deploy.js
---

const <%= coin %>Crowdsale = artifacts.require('./<%= coin %>Crowdsale.sol')

function latestTime() {
  return web3.eth.getBlock('latest').timestamp
}

const duration = {
  seconds: function(val) {
    return val
  },
  minutes: function(val) {
    return val * this.seconds(60)
  },
  hours: function(val) {
    return val * this.minutes(60)
  },
  days: function(val) {
    return val * this.hours(24)
  },
  weeks: function(val) {
    return val * this.days(7)
  },
  years: function(val) {
    return val * this.days(365)
  }
}
function ether(n) {
  return new web3.BigNumber(web3.toWei(n, 'ether'))
}

const deploy = async (deployer, accounts) => {
  const rate = 1
  const startTime = latestTime() + duration.minutes(10) + duration.weeks(<%= startInWeeks %>)
  const endTime = startTime + duration.weeks(<%= lastForWeeks %>)
  const cap = ether(<%= capInEther %>)
  const goal = ether(<%= goalInEther %>)

  await deployer.deploy(
    <%= coin %>Crowdsale,
    startTime,
    endTime,
    rate,
    accounts[0],
    cap,
    goal
  )
  const inst = await <%= coin %>Crowdsale.deployed()
  const token = await inst.token.call()
  console.log('<%= coin %>Token:', token)
  console.log('')
  console.log('Deployed. Look for <%= coin %>Token and <%= coin %>Crowdsale addresses above for your coin and contract.')
}

module.exports = function(deployer, network, accounts) {
  return deploy(deployer, accounts)
}
