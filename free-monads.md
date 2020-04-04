free applicative -

https://github.com/ethul/purescript-freeap/blob/8f7bebc36c267794c31d5af1a5737746645e59df/src/Control/Applicative/Free.purs#L21

```hs
-- id :: a -> a
-- id :: (c -> b) -> b -> c

-- flip id :: b -> (b -> c) -> c
-- where
-- (<$>) :: Functor f => (a -> b) -> f a -> f b
-- -- a is `b`, b is `(b -> c) -> c`

-- (flip id <$>) :: Functor f => f b -> f ((b -> c) -> c)
-- (flip id <$> ga) :: Functor f => f ((b -> c) -> c)

-- (flip id <$> ga <*>) :: f (b -> c) -> f c
-- where
-- (<*>) :: Applicative f => f (a -> b) -> f a -> f b
-- -- a is `b -> c`, b is `c`

runAp :: Applicative g => (forall x. f x -> g x) -> Ap f a -> g a
runAp _ (Pure x) = pure x
runAp u (Ap (fa :: f a1) (x :: Ap f (a1 -> a))) =
  let (ga :: g a1) = u fa
      (other :: g (a1 -> a)) = runAp u x
      (res1 :: forall c. g ((a1 -> c) -> c)) = flip id <$> ga
  in res1 <*> other

example :: Ap Maybe String
example =
  Ap
  (Just show)
  (Pure 1)

example :: Ap Maybe String
example =
  Ap
  (Just show)
  (Ap
    (Just (\i -> i + 1))
    (Pure 1)
  )

example :: Ap Maybe (String,Int)
example = (,) <$> Pure "asdf" <*> Pure 1
example = (Pure ("asdf",)) <*> Pure 1
example =
  Ap
  (Just 1)
  ( Ap
    (Just "asdf")
    (Pure (,) :: Ap Maybe (a -> b -> (a,b)))
    :: Ap Maybe (b -> (String,b))
  )

-- ((,) <$>) :: Functor f => f a -> f (b -> (a, b))
-- ((,) <$> Pure "asdf") :: Ap f (b -> ([Char], b))
-- ((,) <$> Pure "asdf" <*>) :: Ap f a -> Ap f ([Char], a)

-- (<**>) :: Applicative f => f a -> f (a -> b) -> f b

retractAp :: Applicative f => Ap f a -> f a
retractAp (Pure a) = pure a
retractAp (Ap fa fab) = fa <**> retractAp fab
```


http://hackage.haskell.org/package/free-5.1.3/docs/Control-Applicative-Free.html

http://hackage.haskell.org/package/free-5.1.3/docs/examples/ValidationForm.hs

free monads
free comonads
free alternatives

free semirings -
