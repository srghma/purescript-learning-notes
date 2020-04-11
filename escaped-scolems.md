https://github.com/purescript-halogen/purescript-halogen/blob/337d450fdd5e18de6f75920f808c34a173ff8d88/src/Halogen/Component.purs#L256-L261

```purs
newtype Foo content hiddenContent = Foo { content :: content, hiddenContent :: hiddenContent }

data FooX (content :: Type) -- hides internal representation, X or Box postfix

mkFooX
  :: forall content hiddenContent
   . (Foo content hiddenContent)
  -> (FooX content)
mkFooX = unsafeCoerce

unFooX
  :: forall content a
   . (forall hiddenContent. Foo content hiddenContent -> a) -- will throw error if `hiddenContent` escapes this function
  -> FooX content
  -> a
unFooX = unsafeCoerce

foo :: Foo String Int
foo = Foo { content: "asdf", hiddenContent: 42  }

fooX :: FooX String
fooX = mkFooX foo

testCorrect :: String
testCorrect = unFooX (\(Foo { content, hiddenContent }) -> content) fooX

testCorrent2 :: Int
testCorrent2 = unFooX (\(Foo { content, hiddenContent }) -> 1) fooX

-- | ---------------------------
-- | Could not match type
-- |
-- |   hiddenContent0
-- |
-- | with type
-- |
-- |   Int
-- | ---------------------------

{-- testFails :: Int --}
{-- testFails = unFooX (\(Foo { content, hiddenContent }) -> hiddenContent) fooX --}

{-- testFails2 :: Int --}
{-- testFails2 = unFooX (\(Foo { content, hiddenContent }) -> hiddenContent + 1) fooX --}

{-- testFails3 :: Int --}
{-- testFails3 = unFooX (\(Foo { content, hiddenContent }) -> unsafeCoerce (hiddenContent + 1)) fooX --}

testCorrect3 :: Int
testCorrect3 = unFooX (\(Foo { content, hiddenContent }) -> unsafeCoerce hiddenContent + 1) fooX
```
