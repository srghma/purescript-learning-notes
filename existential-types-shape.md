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

import Effect
import Effect.Console
import Prelude
import Data.Foldable
import Unsafe.Coerce

class Shape_ a where
  perimeter :: a -> Number
  area      :: a -> Number

type Shape_Dict a = { myClassFunc :: a -> String }

myClassDict :: forall a . MyClass a => MyClassDict a
myClassDict = { myClassFunc }

data Shape = Shape (forall a . Shape_ a => a)

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
  perimeter (Shape shape) = perimeter shape
  area      (Shape shape) = area      shape


--
-- Smart constructor
--

-- circle :: Radius -> Shape
-- circle r = Shape (Circle r)

-- rectangle :: Side -> Side -> Shape
-- rectangle x y = Shape (Rectangle x y)

-- square :: Side -> Shape
-- square s = Shape (Square s)

-- shapes :: Array Shape
-- shapes = [circle 2.4, rectangle 3.1 4.4, square 2.1]

-- main :: Effect Unit
-- main = do
--   log testCorrect1 -- MyClass Int
--   log testCorrect2 -- MyClass Array: MyClass String, MyClass String
```
