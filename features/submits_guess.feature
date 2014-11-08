Feature: code-breaker submits guess

The code-breaker submits a guess of four numbers.
The game marks the guess with + and - signs.

For each number in the guess that matches the number and position of a number
in the secret code, the mark includes one + sign.
For each number in the guess that matches the number but not the position of a
number in the secret code, the mark includes one - sign.

Scenario Outline: submit guess
  Given the secret code is "<code>"
  When I guess "<guess>"
  Then the mark should be "<mark>"

Scenarios: all numbers correct
  | code | | guess | | mark |
  | 1234 | | 1234  | | ++++ |
  | 1234 | | 1243  | | ++-- |
  | 1234 | | 1423  | | +--- |
  | 1234 | | 4321  | | ---- |

Scenarios: 3 numbers correct
  | code | | guess | | mark |
  | 1234 | | 1235  | | +++  |
  | 1234 | | 1325  | | +--  |
  | 1234 | | 3215  | | ---  |

Scenarios: 2 numbers correct
  | code | | guess | | mark |
  | 1234 | | 1256  | | ++   |
  | 1234 | | 1562  | | +-   |
  | 1234 | | 2156  | | --   |

Scenarios: 1 number correct
  | code | | guess | | mark |
  | 1234 | | 1567  | | +    |
  | 1234 | | 5671  | | -    |

Scenarios: no numbers correct
  | code | | guess | | mark |
  | 1234 | | 5678  | |      |
