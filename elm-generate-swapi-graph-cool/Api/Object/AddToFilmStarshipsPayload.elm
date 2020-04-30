-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.AddToFilmStarshipsPayload exposing (..)

import Api.InputObject
import Api.Interface
import Api.Object
import Api.Scalar
import Api.ScalarCodecs
import Api.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


filmsFilm : SelectionSet decodesTo Api.Object.Film -> SelectionSet (Maybe decodesTo) Api.Object.AddToFilmStarshipsPayload
filmsFilm object_ =
    Object.selectionForCompositeField "filmsFilm" [] object_ (identity >> Decode.nullable)


starshipsStarship : SelectionSet decodesTo Api.Object.Starship -> SelectionSet (Maybe decodesTo) Api.Object.AddToFilmStarshipsPayload
starshipsStarship object_ =
    Object.selectionForCompositeField "starshipsStarship" [] object_ (identity >> Decode.nullable)