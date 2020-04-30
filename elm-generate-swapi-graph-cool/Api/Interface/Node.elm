-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Interface.Node exposing (..)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onAsset : SelectionSet decodesTo Api.Object.Asset
    , onFilm : SelectionSet decodesTo Api.Object.Film
    , onPerson : SelectionSet decodesTo Api.Object.Person
    , onPlanet : SelectionSet decodesTo Api.Object.Planet
    , onSpecies : SelectionSet decodesTo Api.Object.Species
    , onStarship : SelectionSet decodesTo Api.Object.Starship
    , onVehicle : SelectionSet decodesTo Api.Object.Vehicle
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Api.Interface.Node
fragments selections =
    Object.exhaustiveFragmentSelection
        [ Object.buildFragment "Asset" selections.onAsset
        , Object.buildFragment "Film" selections.onFilm
        , Object.buildFragment "Person" selections.onPerson
        , Object.buildFragment "Planet" selections.onPlanet
        , Object.buildFragment "Species" selections.onSpecies
        , Object.buildFragment "Starship" selections.onStarship
        , Object.buildFragment "Vehicle" selections.onVehicle
        ]


{-| Can be used to create a non-exhaustive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onAsset = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onFilm = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPerson = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPlanet = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onSpecies = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onStarship = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onVehicle = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| The id of the object.
-}
id : SelectionSet Api.ScalarCodecs.Id Api.Interface.Node
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)