```purs
import Prelude
import Effect
import Effect.Console

foo :: Int -> Effect Int
foo x =
  let
      two = one + 1
   in do
      log "asdf"
      let asdf = log "asdf"
      asdf
      pure two
  where
  one = 1 + 1

  dothmth = do
     log "qwe"
     log "qwe1"
```

```js
// Generated by purs version 0.13.8
"use strict";
var Effect_Console = require("../Effect.Console/index.js");
var foo = function (x) {
    var one = 1 + 1 | 0;
    var dothmth = function __do() {
        Effect_Console.log("qwe")();
        return Effect_Console.log("qwe1")();
    };
    var two = one + 1 | 0;
    return function __do() {
        Effect_Console.log("asdf")();
        var asdf = Effect_Console.log("asdf");
        asdf();
        return two;
    };
};
module.exports = {};
```