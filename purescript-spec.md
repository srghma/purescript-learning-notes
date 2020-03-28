runSpecT
  :: forall m
   . Functor m
  => Config
  -> Array Reporter
  -> SpecT Aff Unit m Unit
  -> m (Aff (Array (Tree Void Result)))


```purescript
type Spec a = SpecT Aff Unit Identity a

newtype SpecT g i m a = SpecT (WriterT (Array (SpecTree g i)) m a)

{-
meaning:
- m - you can execute effects when calling Spec (`describe`, `it`), in `beforeAll`
- g - you can execute effects `after`, `afterAll`, `around`, and in Example


Summary:
  purescript-spec provides support for after group, around (before + after) example, but not before group (because beforeAll is just memoized around example)
-}

type SpecTree m a = Tree (ActionWith m a) (Item m a)
-- type SpecTree m a = Tree (a -> m Unit) (Item m a)

data Tree c a
  = Node (Either String c) (Array (Tree c a)) -- (Either String c) means `Left groupName`, `Right (computationToExecuteAfterGroup :: (a -> m Unit))`
  | Leaf String (Maybe a) -- String - name, a - item

newtype Item m a = Item
  { isFocused :: Boolean
  , isParallelizable :: Maybe Boolean
  , example :: (ActionWith m a -> m Unit) -> m Unit -- result of `evaluateExample t`, this is example, not yet wrapped in around
  -- , example :: ((a -> m Unit) -> m Unit) -> m Unit -- a is contra, provided outside
  }

newtype PathItem = PathItem { index :: Int, name :: Maybe String }

type Path = Array PathItem

-----

class Example t arg m | t -> arg, t -> m where
  evaluateExample :: t -> (ActionWith m arg -> m Unit) -> m Unit
  -- evaluateExample :: t -> ((arg -> m Unit) -> m Unit) -> m Unit

instance exampleFunc :: Example (arg -> m Unit) arg m where
  evaluateExample :: (arg -> m Unit) -> (ActionWith m arg -> m Unit) -> m Unit
  evaluateExample t around' = around' t

else instance exampleMUnit :: Example (m Unit) Unit m where
  evaluateExample :: (m Unit) -> (ActionWith m Unit -> m Unit) -> m Unit
  evaluateExample t around' = around' $ \_ -> t

-----

type ActionWith m a = a -> m Unit

----

data Result
  = Success Speed Milliseconds
  | Failure Error

data Speed = Fast | Medium | Slow

foreign import data Error :: Type

