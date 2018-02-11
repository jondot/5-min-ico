module.exports = [
  {
    type: 'input',
    name: 'coin',
    message: "What's the name of your coin? (e.g. Coolium)",
    default: 'Coolium'
  },
  {
    type: 'input',
    name: 'sym',
    message: "What's the symbol of your coin? (e.g. CLM)",
    default: 'CLM'
  },
  {
    type: 'input',
    name: 'decimals',
    message:
      'Number of decimal places for smallest unit? (e.g. for millionth, input the number 6)',
    default: 8
  },
  {
    type: 'input',
    name: 'startInWeeks',
    message: 'When do you want to START your ICO, in weeks from now?',
    default: 0
  },
  {
    type: 'input',
    name: 'lastForWeeks',
    message: 'When do you want to END your ICO, in weeks from now?',
    default: 40
  },
  {
    type: 'input',
    name: 'capInEther',
    message: 'Max amount to raise in Ether?',
    default: 500
  },
  {
    type: 'input',
    name: 'goalInEther',
    message: 'Goal amount to raise in Ether?',
    default: 100
  }
]
