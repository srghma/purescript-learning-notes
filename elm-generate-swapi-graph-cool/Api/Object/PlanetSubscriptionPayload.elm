-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.PlanetSubscriptionPayload exposing (..)

import Api.Enum.ModelMutationType_
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


mutation : SelectionSet Api.Enum.ModelMutationType_.ModelMutationType_ Api.Object.PlanetSubscriptionPayload
mutation =
    Object.selectionForField "Enum.ModelMutationType_.ModelMutationType_" "mutation" [] Api.Enum.ModelMutationType_.decoder


node : SelectionSet decodesTo Api.Object.Planet -> SelectionSet (Maybe decodesTo) Api.Object.PlanetSubscriptionPayload
node object_ =
    Object.selectionForCompositeField "node" [] object_ (identity >> Decode.nullable)


updatedFields : SelectionSet (Maybe (List String)) Api.Object.PlanetSubscriptionPayload
updatedFields =
    Object.selectionForField "(Maybe (List String))" "updatedFields" [] (Decode.string |> Decode.list |> Decode.nullable)


previousValues : SelectionSet decodesTo Api.Object.PlanetPreviousValues -> SelectionSet (Maybe decodesTo) Api.Object.PlanetSubscriptionPayload
previousValues object_ =
    Object.selectionForCompositeField "previousValues" [] object_ (identity >> Decode.nullable)
