####

https://pursuit.purescript.org/packages/purescript-generics-rep/ - just gives Generic class `derive instance genericSimpleBounded :: G.Generic SimpleBounded _`

**https://pursuit.purescript.org/packages/purescript-foreign-generic/** - `import Foreign.Class (class Decode, class Encode)`
```
  Foreign.Class
  Foreign.Generic
  Foreign.Generic.Class
  Foreign.Generic.EnumEncoding
  Foreign.Generic.Internal
  Foreign.JSON (`parseJSON :: String -> F Foreign`, `decodeJSONWith :: forall a. (Foreign -> F a) -> String -> F a`)
  Foreign.NullOrUndefined
  NOTE: for JSON it's better to use https://github.com/purescript-contrib/purescript-argonaut/ (better errors)
```

depends on https://pursuit.purescript.org/packages/purescript-foreign
```
  Foreign
  Foreign.Index
  Foreign.Keys
  --
  provides basic functions e.g. readString
  NOTE: cool PR (use Trampoline monad instead of Identity to reduce size of call stack) - https://github.com/purescript/purescript-foreign/pull/74
```

####

https://github.com/justinwoo/purescript-howto-foreign-generic

####

# Class based:

## **https://github.com/justinwoo/purescript-simple-json** - generic based, Foreign

## **https://github.com/purescript-contrib/purescript-argonaut-codecs** - not generic based (but can be used with purescript-argonaut-generic), JSON

(https://github.com/purescript-contrib/purescript-argonaut-core/blob/v4.0.1/src/Data/Argonaut/Core.purs#L52-L52)

NOTE: not Foreign, but you can convert Foreign to JSON using unsafeCoerce


# Function based:

## **https://github.com/paf31/purescript-foreign-generic** - generic based, Foreign

is better than call based, because function and profunctor based are not forced to decode/encode the same way

implements generic JSON decoder for records too

THOUGH doesnt implement enc/dec for https://pursuit.purescript.org/packages/purescript-variant/

(https://github.com/paf31/purescript-foreign-generic/blob/46f09996bd54efc146bc1725783789dbac7d6a5b/src/Foreign/Generic.purs#L57-L75)

## **https://github.com/purescript-contrib/purescript-argonaut-generic** - generic based, JSON

# Profunctor based:

## **https://github.com/garyb/purescript-codec-argonaut**

alternative to purescript-argonaut-codecs

```purescript
newtype Star f a b = Star (a -> f b)

{-
turns functor f to profunctor

(Functor f) => Profunctor (Star f)
  dimap :: (a -> b) -> (c -> d) -> p b c -> p a d

(a' -> a) -----> Star (a -> f b) -----> (b -> b')

------------------------------------------------------

similar to `ReaderT` but `f` and `a` are swapped in `ReaderT r m a = ReaderT (r -> m a)`
since `r` is in first position - it's impossible to define profunctor for `ReaderT`
-}

data GCodec m n a b = GCodec (m b) (Star n a b)
type Codec m a b c d = GCodec (ReaderT a m) (Writer b) c d
type BasicCodec m a b = Codec m a a b b

--------

type Codec m a'decodeConfig b'encoderIntermediateRes c'jsonToEncode d'targetType =
  GCodec (ReaderT a'decodeConfig m) (Writer b'encoderIntermediateRes) c'jsonToEncode d'targetType =
  GCodec (ReaderT a'decodeConfig m d'targetType) (Star (Writer b'encoderIntermediateRes) c'jsonToEncode d'targetType) =
  GCodec (a'decodeConfig -> m d'targetType) (c'jsonToEncode -> Writer b'encoderIntermediateRes d'targetType)

type JsonCodec a =
  BasicCodec (Either JsonDecodeError) J.Json a =
  Codec (Either JsonDecodeError) J.Json J.Json a'jsonToEncode a'targetType =
  GCodec (ReaderT Json (Either JsonDecodeError)) (WriterT Json Identity) a'jsonToEncode a'targetType =
  GCodec (ReaderT Json (Either JsonDecodeError) a'targetType) (Star (WriterT Json Identity) a'jsonToEncode a'targetType) =
  GCodec (ReaderT Json (Either JsonDecodeError) a'targetType) (a'jsonToEncode -> WriterT Json Identity a'targetType)
  GCodec (Json -> Either JsonDecodeError a'targetType) (a'jsonToEncode -> Writer Json a'targetType)

type JIndexedCodec a =
  Codec (Either JsonDecodeError) (Array J.Json) (L.List J.Json) a'jsonToEncode a'targetType =
  GCodec (ReaderT (Array Json) (Either JsonDecodeError)) (WriterT (List Json) Identity) a'jsonToEncode a'targetType
  GCodec (ReaderT (Array Json) (Either JsonDecodeError) a'targetType) (Star (WriterT (List Json) Identity) a'jsonToEncode a'targetType)
  GCodec (ReaderT (Array Json) (Either JsonDecodeError) a'targetType) (a'jsonToEncode -> WriterT (List Json) Identity a'targetType)
  GCodec (Array Json -> Either JsonDecodeError a'targetType) (a'jsonToEncode -> Writer (List Json) a'targetType)

type JPropCodec a =
  Codec (Either JsonDecodeError) (FO.Object J.Json) (L.List (Tuple String J.Json)) a'jsonToEncode a'targetType =
  GCodec (ReaderT (Object Json) (Either JsonDecodeError)) (WriterT (List (Tuple String Json)) Identity) a'jsonToEncode a'targetType =
  GCodec (ReaderT (Object Json) (Either JsonDecodeError) a'targetType) (Star (WriterT (List (Tuple String Json)) Identity) a'jsonToEncode a'targetType) =
  GCodec (ReaderT (Object Json) (Either JsonDecodeError) a'targetType) (Star (WriterT (List (Tuple String Json)) Identity) a'jsonToEncode a'targetType) =
  GCodec (Object Json -> Either JsonDecodeError a'targetType) (a'jsonToEncode -> Writer (List (Tuple String Json)) a'targetType)

---------

decoder :: forall m n a b. GCodec m n a b -> m b
decoder (GCodec f _) = f

encoder :: forall m n a b. GCodec m n a b -> Star n a b
encoder (GCodec _ f) = f

decode ∷ ∀ m a b c d. Codec m a b c d → a → m d
decode = runReaderT <<< decoder

encode ∷ ∀ m a b c d. Codec m a b c d → c → b
encode codec = execWriter <<< un Star (encoder codec)

decode  :: forall m a b c d. Codec m a b c d → a → m d (jsonToString :: Codec -> config -> output)
encode  :: forall m a b c d. Codec m a b c d → c → b   (stringToJson :: Codec -> string -> errors)

-------- How basicCodec and JsonCodec works
basicCodec ∷ ∀ m a b. (a → m b) → (b → a) → BasicCodec m a b
basicCodec f g = GCodec (ReaderT f) (Star \x → writer $ Tuple x (g x))

jsonPrimCodec
  ∷ ∀ a
   . String
  → (Argonaut.Json → Maybe a)
  → (a → Argonaut.Json)
  → JsonCodec a
jsonPrimCodec ty jsonToA atoJson =
  basicCodec (maybe (Left (TypeMismatch ty)) pure <<< jsonToA) atoJson

int ∷ JsonCodec Int
int = jsonPrimCodec "Int"
  ((Int.fromNumber :: Number -> Maybe Int) <=< (Argonaut.toNumber :: Json -> Maybe Number))
  ((Argonaut.fromNumber :: Number -> Json) <<< (Int.toNumber :: Int -> Number))

--------

-- | ```purescript
-- | import Data.Codec ((~))
-- | import Data.Codec.Argonaut as CA
-- |
-- | type Person = { name ∷ String, age ∷ Int }
-- |
-- | codecPerson ∷ CA.JsonCodec Person
-- | codecPerson = CA.indexedArray "Test Object" $
-- |   { name: _, age: _ }
-- |     <$> _.name ~ CA.index 0 CA.string
-- |     <*> _.age ~ CA.index 1 CA.int
-- | ```
indexedArray ∷ ∀ a. String → JIndexedCodec a → JsonCodec a
indexedArray name =
  bihoistGCodec
    (\r → ReaderT (Data.Bifunctor.lmap (Named name) <<< runReaderT r <=< decode jarray))
    (mapWriter (Data.Bifunctor.rmap (J.fromArray <<< A.fromFoldable)))

-- | A codec for an item in an `indexedArray`.
index ∷ ∀ a. Int → JsonCodec a → JIndexedCodec a
index ix codec = GCodec dec enc
  where
  dec = ReaderT \xs →
    Data.Bifunctor.lmap (AtIndex ix) case A.index xs ix of
      Just val → decode codec val
      Nothing → Left MissingValue
  enc = Star \val → writer $ Tuple val (pure (encode codec val))
```
