-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Vehicle exposing (..)

import Api.Enum.FilmOrderBy
import Api.Enum.PersonOrderBy
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


{-| The maximum number of kilograms that this vehicle can transport.
-}
cargoCapacity : SelectionSet (Maybe Int) Api.Object.Vehicle
cargoCapacity =
    Object.selectionForField "(Maybe Int)" "cargoCapacity" [] (Decode.int |> Decode.nullable)


{-| The class of this vehicle, such as "Wheeled" or "Repulsorcraft".
-}
class : SelectionSet (Maybe String) Api.Object.Vehicle
class =
    Object.selectionForField "(Maybe String)" "class" [] (Decode.string |> Decode.nullable)


{-| The maximum length of time that this vehicle can provide consumables for its entire crew without having to resupply.
-}
consumables : SelectionSet (Maybe String) Api.Object.Vehicle
consumables =
    Object.selectionForField "(Maybe String)" "consumables" [] (Decode.string |> Decode.nullable)


{-| The cost of this vehicle new, in Galactic Credits.
-}
costInCredits : SelectionSet (Maybe Int) Api.Object.Vehicle
costInCredits =
    Object.selectionForField "(Maybe Int)" "costInCredits" [] (Decode.int |> Decode.nullable)


createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.Vehicle
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The number of personnel needed to run or pilot this vehicle.
-}
crew : SelectionSet (Maybe Int) Api.Object.Vehicle
crew =
    Object.selectionForField "(Maybe Int)" "crew" [] (Decode.int |> Decode.nullable)


type alias FilmsOptionalArguments =
    { filter : OptionalArgument Api.InputObject.FilmFilter
    , orderBy : OptionalArgument Api.Enum.FilmOrderBy.FilmOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-|

  - filter -

-}
films : (FilmsOptionalArguments -> FilmsOptionalArguments) -> SelectionSet decodesTo Api.Object.Film -> SelectionSet (Maybe (List decodesTo)) Api.Object.Vehicle
films fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeFilmFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.FilmOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "films" optionalArgs object_ (identity >> Decode.list >> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.Vehicle
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| indicates if the record is published
-}
isPublished : SelectionSet Bool Api.Object.Vehicle
isPublished =
    Object.selectionForField "Bool" "isPublished" [] Decode.bool


{-| The length of this vehicle in meters.
-}
length : SelectionSet (Maybe Float) Api.Object.Vehicle
length =
    Object.selectionForField "(Maybe Float)" "length" [] (Decode.float |> Decode.nullable)


{-| The manufacturer of this vehicle.
-}
manufacturer : SelectionSet (Maybe (List String)) Api.Object.Vehicle
manufacturer =
    Object.selectionForField "(Maybe (List String))" "manufacturer" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| The maximum speed of this vehicle in the atmosphere.
-}
maxAtmospheringSpeed : SelectionSet (Maybe Int) Api.Object.Vehicle
maxAtmospheringSpeed =
    Object.selectionForField "(Maybe Int)" "maxAtmospheringSpeed" [] (Decode.int |> Decode.nullable)


{-| The model or official name of this vehicle. Such as "All-Terrain Attack Transport".
-}
model : SelectionSet (Maybe String) Api.Object.Vehicle
model =
    Object.selectionForField "(Maybe String)" "model" [] (Decode.string |> Decode.nullable)


{-| The name of this vehicle. The common name, such as "Sand Crawler" or "Speeder bike".
-}
name : SelectionSet String Api.Object.Vehicle
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The number of non-essential people this vehicle can transport.
-}
passengers : SelectionSet (Maybe Int) Api.Object.Vehicle
passengers =
    Object.selectionForField "(Maybe Int)" "passengers" [] (Decode.int |> Decode.nullable)


type alias PilotsOptionalArguments =
    { filter : OptionalArgument Api.InputObject.PersonFilter
    , orderBy : OptionalArgument Api.Enum.PersonOrderBy.PersonOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-|

  - filter -

-}
pilots : (PilotsOptionalArguments -> PilotsOptionalArguments) -> SelectionSet decodesTo Api.Object.Person -> SelectionSet (Maybe (List decodesTo)) Api.Object.Vehicle
pilots fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodePersonFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.PersonOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "pilots" optionalArgs object_ (identity >> Decode.list >> Decode.nullable)


updatedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.Vehicle
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


type alias FilmsMetaOptionalArguments =
    { filter : OptionalArgument Api.InputObject.FilmFilter
    , orderBy : OptionalArgument Api.Enum.FilmOrderBy.FilmOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Meta information about the query.

  - filter -

-}
filmsMeta_ : (FilmsMetaOptionalArguments -> FilmsMetaOptionalArguments) -> SelectionSet decodesTo Api.Object.QueryMeta_ -> SelectionSet decodesTo Api.Object.Vehicle
filmsMeta_ fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeFilmFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.FilmOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "_filmsMeta" optionalArgs object_ identity


type alias PilotsMetaOptionalArguments =
    { filter : OptionalArgument Api.InputObject.PersonFilter
    , orderBy : OptionalArgument Api.Enum.PersonOrderBy.PersonOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Meta information about the query.

  - filter -

-}
pilotsMeta_ : (PilotsMetaOptionalArguments -> PilotsMetaOptionalArguments) -> SelectionSet decodesTo Api.Object.QueryMeta_ -> SelectionSet decodesTo Api.Object.Vehicle
pilotsMeta_ fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodePersonFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.PersonOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "_pilotsMeta" optionalArgs object_ identity
