https://github.com/purescript-contrib/purescript-routing

useful functions

```
functors

<$ :: a -> f b -> f a
voidRight x = map (const x)
-- this is easy

$>

<$>

applicatives

<* :: f a -> f b -> f a
applyFirst a b = const <$> a <*> b
-- where `const <$> a :: f (x -> a)`

*>

<*>
```
