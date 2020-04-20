```haskell
module Halogen.MDL.Button where

import Effect
import Effect.Console
import Prelude
import Data.Foldable
import Unsafe.Coerce

class Shape_ a where
  perimeter :: a -> Double
  area      :: a -> Double

data Shape = forall a . Shape_ a => Shape a

type Radius = Double
type Side   = Double

data Circle    = Circle    Radius
data Rectangle = Rectangle Side Side
data Square    = Square    Side


instance Shape_ Circle where
  perimeter (Circle r) = 2 * pi * r
  area      (Circle r) = pi * r * r

instance Shape_ Rectangle where
  perimeter (Rectangle x y) = 2*(x + y)
  area      (Rectangle x y) = x * y

instance Shape_ Square where
  perimeter (Square s) = 4*s
  area      (Square s) = s*s

instance Shape_ Shape where
  perimeter (Shape shape) = perimeter shape
  area      (Shape shape) = area      shape


--
-- Smart constructor
--

circle :: Radius -> Shape
circle r = Shape (Circle r)

rectangle :: Side -> Side -> Shape
rectangle x y = Shape (Rectangle x y)

square :: Side -> Shape
square s = Shape (Square s)

shapes :: [Shape]
shapes = [circle 2.4, rectangle 3.1 4.4, square 2.1]

-- main :: Effect Unit
-- main = do
--   log testCorrect1 -- MyClass Int
--   log testCorrect2 -- MyClass Array: MyClass String, MyClass String
```

```purs
module Halogen.MDL.Button where

import Data.Foldable
import Effect
import Effect.Console
import Prelude
import Unsafe.Coerce

class Shape_ a where
  perimeter :: a -> Number
  area      :: a -> Number

data Shape = Shape (forall r. (forall a. Shape_ a => a -> r) -> r)

mkShape :: forall a. Shape_ a => a -> Shape
mkShape a = Shape \k -> k a

unShape :: forall r. (forall a. Shape_ a => a -> r) -> Shape -> r
unShape k1 (Shape k2) = k2 k1

type Radius = Number
type Side   = Number

data Circle    = Circle    Radius
data Rectangle = Rectangle Side Side
data Square    = Square    Side


pi = 3.14

instance shape_Circle :: Shape_ Circle where
  perimeter (Circle r) = 2.0 * pi * r
  area      (Circle r) = pi * r * r

instance shape_Rectangle :: Shape_ Rectangle where
  perimeter (Rectangle x y) = 2.0 *(x + y)
  area      (Rectangle x y) = x * y

instance shape_Square :: Shape_ Square where
  perimeter (Square s) = 4.0 *s
  area      (Square s) = s*s

instance shape_Shape :: Shape_ Shape where
  perimeter (Shape shapeFn) = shapeFn perimeter
  area      (Shape shapeFn) = shapeFn area


--
-- Smart constructor
--

circle :: Radius -> Shape
circle r = mkShape (Circle r)

rectangle :: Side -> Side -> Shape
rectangle x y = mkShape (Rectangle x y)

square :: Side -> Shape
square s = mkShape (Square s)

shapes :: Array Shape
shapes = [circle 2.4, rectangle 3.1 4.4, square 2.1]

main :: Effect Unit
main = do
  -- area = 18.086399999999998, perimeter = 15.072 | area = 13.640000000000002, perimeter = 15.0 | area = 4.41, perimeter = 8.4
  log $ intercalate " | " $ shapes <#> unShape (\s -> "area = " <> show (area s) <> ", perimeter = " <> show (perimeter s))
```
