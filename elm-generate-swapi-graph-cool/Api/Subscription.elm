-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Subscription exposing (..)

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
import Json.Decode as Decode exposing (Decoder)


type alias AssetOptionalArguments =
    { filter : OptionalArgument Api.InputObject.AssetSubscriptionFilter }


{-|

  - filter -

-}
asset : (AssetOptionalArguments -> AssetOptionalArguments) -> SelectionSet decodesTo Api.Object.AssetSubscriptionPayload -> SelectionSet (Maybe decodesTo) RootSubscription
asset fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeAssetSubscriptionFilter ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "Asset" optionalArgs object_ (identity >> Decode.nullable)


type alias FilmOptionalArguments =
    { filter : OptionalArgument Api.InputObject.FilmSubscriptionFilter }


{-|

  - filter -

-}
film : (FilmOptionalArguments -> FilmOptionalArguments) -> SelectionSet decodesTo Api.Object.FilmSubscriptionPayload -> SelectionSet (Maybe decodesTo) RootSubscription
film fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeFilmSubscriptionFilter ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "Film" optionalArgs object_ (identity >> Decode.nullable)


type alias PersonOptionalArguments =
    { filter : OptionalArgument Api.InputObject.PersonSubscriptionFilter }


{-|

  - filter -

-}
person : (PersonOptionalArguments -> PersonOptionalArguments) -> SelectionSet decodesTo Api.Object.PersonSubscriptionPayload -> SelectionSet (Maybe decodesTo) RootSubscription
person fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodePersonSubscriptionFilter ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "Person" optionalArgs object_ (identity >> Decode.nullable)


type alias PlanetOptionalArguments =
    { filter : OptionalArgument Api.InputObject.PlanetSubscriptionFilter }


{-|

  - filter -

-}
planet : (PlanetOptionalArguments -> PlanetOptionalArguments) -> SelectionSet decodesTo Api.Object.PlanetSubscriptionPayload -> SelectionSet (Maybe decodesTo) RootSubscription
planet fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodePlanetSubscriptionFilter ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "Planet" optionalArgs object_ (identity >> Decode.nullable)


type alias SpeciesOptionalArguments =
    { filter : OptionalArgument Api.InputObject.SpeciesSubscriptionFilter }


{-|

  - filter -

-}
species : (SpeciesOptionalArguments -> SpeciesOptionalArguments) -> SelectionSet decodesTo Api.Object.SpeciesSubscriptionPayload -> SelectionSet (Maybe decodesTo) RootSubscription
species fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeSpeciesSubscriptionFilter ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "Species" optionalArgs object_ (identity >> Decode.nullable)


type alias StarshipOptionalArguments =
    { filter : OptionalArgument Api.InputObject.StarshipSubscriptionFilter }


{-|

  - filter -

-}
starship : (StarshipOptionalArguments -> StarshipOptionalArguments) -> SelectionSet decodesTo Api.Object.StarshipSubscriptionPayload -> SelectionSet (Maybe decodesTo) RootSubscription
starship fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeStarshipSubscriptionFilter ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "Starship" optionalArgs object_ (identity >> Decode.nullable)


type alias VehicleOptionalArguments =
    { filter : OptionalArgument Api.InputObject.VehicleSubscriptionFilter }


{-|

  - filter -

-}
vehicle : (VehicleOptionalArguments -> VehicleOptionalArguments) -> SelectionSet decodesTo Api.Object.VehicleSubscriptionPayload -> SelectionSet (Maybe decodesTo) RootSubscription
vehicle fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeVehicleSubscriptionFilter ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "Vehicle" optionalArgs object_ (identity >> Decode.nullable)
