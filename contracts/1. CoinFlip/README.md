# Coinflip

- Pass this challenge by correctly guessing the outcome of the coinflip 10 times in a row

# Hints

- CoinFlip's flip function is _intended_ to randomly make the side variable either true or false
- Can you create similar logic in your attacking contract to correctly choose what the flip function will choose?
- You may add code on `AttackingCoinFlip`.sol and/or `CoinFlipHelper.ts` to help pass the tests in CoinFlip.test.ts

# Approach
- "Replay" code logic to obtain answer in advance
- Pass the "guess", derived from the answer, to the victim contract

# Resources
- <https://solidity-by-example.org/hacks/randomness>
- <https://www.youtube.com/watch?v=8FF3IBTMeK0>