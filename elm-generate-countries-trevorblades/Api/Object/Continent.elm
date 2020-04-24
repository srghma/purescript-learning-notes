-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Continent exposing (..)

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


{-| -}
code : SelectionSet Api.ScalarCodecs.Id Api.Object.Continent
code =
    Object.selectionForField "ScalarCodecs.Id" "code" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| -}
name : SelectionSet String Api.Object.Continent
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| -}
countries : SelectionSet decodesTo Api.Object.Country -> SelectionSet (List decodesTo) Api.Object.Continent
countries object_ =
    Object.selectionForCompositeField "countries" [] object_ (identity >> Decode.list)
