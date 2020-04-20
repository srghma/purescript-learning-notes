https://github.com/purescript/purescript/issues/3492

https://thimoteus.github.io/posts/2018-09-21-existential-types.html

```purs
module Halogen.MDL.Button where

import Effect
import Effect.Console
import Prelude
import Data.Foldable
import Data.Show
import Unsafe.Coerce
import Unsafe.Coerce
-- import Data.Exists

type Exists f = ∀ r. (∀ a. f a -> r) -> r

newtype Showable = Showable (forall r. (forall a. Show a => a -> r) -> r)

mkShowable :: ∀ a. Show a => a -> Showable
mkShowable a = Showable (_ $ a)

instance showShowable :: Show Showable where
  show (Showable a) = a show

showables :: Array Showable
showables = [mkShowable 1, mkShowable unit, mkShowable "hello"]

main :: Effect Unit
main = do
  log $ intercalate ", " (map show showables)
```

NOT WORKING

```purs
module Halogen.MDL.Button where

import Effect
import Effect.Console
import Prelude
import Data.Foldable
import Data.Show
import Unsafe.Coerce
import Unsafe.Coerce
-- import Data.Exists

-- https://thimoteus.github.io/posts/2018-09-21-existential-types.html
type Exists f = ∀ r. (∀ a. f a -> r) -> r
-- newtype Exists f = Exists (∀ r. (∀ a. f a -> r) -> r)

-- https://stackoverflow.com/a/53289906/3574379
-- newtype Exists f = Exists (forall a. f (a :: #Type))


-- newtype Showable = Showable (forall r. (forall a. Show a => a -> r) -> r) -- yes

-- newtype Showable = Showable (Exists (forall a . Show a => a)) -- no

newtype ShowableF a = ShowableF (forall a . Show a => a)
newtype Showable = Showable (Exists (ShowableF))

mkShowable :: ∀ a. Show a => a -> Showable
mkShowable a = Showable (_ $ (ShowableF a))

instance showShowableF :: Show ShowableF where
  show (ShowableF a) = let (asdf :: ?asdf) = a show in ?qwe

instance showShowable :: Show Showable where
  show (Showable a) = let (asdf :: ?asdf) = a show in ?qwe

showables :: Array Showable
showables = [mkShowable 1, mkShowable unit, mkShowable "hello"]

main :: Effect Unit
main = do
  log $ intercalate ", " (map show showables)
```


# eta expansion to resolve “could not match constrained type with constrainted type”

https://discourse.purescript.org/t/how-to-define-an-existential-type-with-a-constraint/518/2
