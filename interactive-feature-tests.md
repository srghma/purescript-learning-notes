# THIS IS NOT WORKING

because purescript repl doesnt support `a <- someAff` ()

-------------------
TODO: wait for

https://github.com/purescript/purescript/issues/2218
https://github.com/purescript-contrib/purescript-aff/issues/187#issuecomment-569527829

http://an-pro.org/posts/webdriver-cookbook.html

-----------------

```purs
:pa
import Prelude
import Test.Main
import Lib.FeatureTest
import Control.Monad.Error.Class
import Control.Monad.Reader.Trans
import Data.Maybe
import Data.Identity
import Data.Time.Duration
import Effect
import Effect.Aff
import Effect.Class
import Effect.Class.Console
import Effect.Exception
import Data.Tuple
import Selenium
-- import Selenium.Monad
import Debug.Trace
import Lib.BuildMyDriver
import Data.Time.Duration

configAff = do
  poolConfiguration <- liftEffect readPoolConfigurationFromEnv
  Tuple driver connectionResult <- loadDeps poolConfiguration
  let config = { driver, connection: connectionResult.connection, defaultTimeout }
  pure config

runInteractively :: FeatureTestSpec Unit -> Effect Unit
runInteractively spec = launchAff_ $ configAff >>= \config -> runFeatureTest spec config

-----------------

:pa
runInteractively do
  get "http://google.com/ncr"

:pa
import Prelude
import Effect
import Effect.Aff
import Effect.Class
import Effect.Class.Console
import Effect.Exception
import Data.Tuple
import Data.Time.Duration

do
  log "asdf"
  delay (Milliseconds 5000.0)
  log "asdf2"
```
