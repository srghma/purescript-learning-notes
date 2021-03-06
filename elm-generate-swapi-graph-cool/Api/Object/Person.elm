-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.Person exposing (..)

import Api.Enum.FilmOrderBy
import Api.Enum.PersonEyeColor
import Api.Enum.PersonGender
import Api.Enum.PersonHairColor
import Api.Enum.PersonSkinColor
import Api.Enum.SpeciesOrderBy
import Api.Enum.StarshipOrderBy
import Api.Enum.VehicleOrderBy
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


{-| The birth year of the person, using the in-universe standard of BBY or ABY - Before the Battle of Yavin or After the Battle of Yavin. The Battle of Yavin is a battle that occurs at the end of Star Wars episode IV: A New Hope.
-}
birthYear : SelectionSet (Maybe String) Api.Object.Person
birthYear =
    Object.selectionForField "(Maybe String)" "birthYear" [] (Decode.string |> Decode.nullable)


createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.Person
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The eye color of this person. Will be "UNKNOWN" if not known or null if the person does not have an eye.
-}
eyeColor : SelectionSet (Maybe (List Api.Enum.PersonEyeColor.PersonEyeColor)) Api.Object.Person
eyeColor =
    Object.selectionForField "(Maybe (List Enum.PersonEyeColor.PersonEyeColor))" "eyeColor" [] (Api.Enum.PersonEyeColor.decoder |> Decode.list |> Decode.nullable)


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
films : (FilmsOptionalArguments -> FilmsOptionalArguments) -> SelectionSet decodesTo Api.Object.Film -> SelectionSet (Maybe (List decodesTo)) Api.Object.Person
films fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeFilmFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.FilmOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "films" optionalArgs object_ (identity >> Decode.list >> Decode.nullable)


{-| The gender of this person. Will be "UNKNOWN" if not known or null if the person does not have a gender.
-}
gender : SelectionSet (Maybe Api.Enum.PersonGender.PersonGender) Api.Object.Person
gender =
    Object.selectionForField "(Maybe Enum.PersonGender.PersonGender)" "gender" [] (Api.Enum.PersonGender.decoder |> Decode.nullable)


{-| The hair color of this person. Will be "UNKNOWN" if not known or null if the person does not have hair.
-}
hairColor : SelectionSet (Maybe (List Api.Enum.PersonHairColor.PersonHairColor)) Api.Object.Person
hairColor =
    Object.selectionForField "(Maybe (List Enum.PersonHairColor.PersonHairColor))" "hairColor" [] (Api.Enum.PersonHairColor.decoder |> Decode.list |> Decode.nullable)


{-| The height of the person in centimeters.
-}
height : SelectionSet (Maybe Int) Api.Object.Person
height =
    Object.selectionForField "(Maybe Int)" "height" [] (Decode.int |> Decode.nullable)


type alias HomeworldOptionalArguments =
    { filter : OptionalArgument Api.InputObject.PlanetFilter }


{-|

  - filter -

-}
homeworld : (HomeworldOptionalArguments -> HomeworldOptionalArguments) -> SelectionSet decodesTo Api.Object.Planet -> SelectionSet (Maybe decodesTo) Api.Object.Person
homeworld fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodePlanetFilter ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "homeworld" optionalArgs object_ (identity >> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.Person
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| indicates if the record is published
-}
isPublished : SelectionSet Bool Api.Object.Person
isPublished =
    Object.selectionForField "Bool" "isPublished" [] Decode.bool


{-| The mass of the person in kilograms.
-}
mass : SelectionSet (Maybe Float) Api.Object.Person
mass =
    Object.selectionForField "(Maybe Float)" "mass" [] (Decode.float |> Decode.nullable)


{-| The name of this person.
-}
name : SelectionSet String Api.Object.Person
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The skin color of this person.
-}
skinColor : SelectionSet (Maybe (List Api.Enum.PersonSkinColor.PersonSkinColor)) Api.Object.Person
skinColor =
    Object.selectionForField "(Maybe (List Enum.PersonSkinColor.PersonSkinColor))" "skinColor" [] (Api.Enum.PersonSkinColor.decoder |> Decode.list |> Decode.nullable)


type alias SpeciesOptionalArguments =
    { filter : OptionalArgument Api.InputObject.SpeciesFilter
    , orderBy : OptionalArgument Api.Enum.SpeciesOrderBy.SpeciesOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-|

  - filter -

-}
species : (SpeciesOptionalArguments -> SpeciesOptionalArguments) -> SelectionSet decodesTo Api.Object.Species -> SelectionSet (Maybe (List decodesTo)) Api.Object.Person
species fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeSpeciesFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.SpeciesOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "species" optionalArgs object_ (identity >> Decode.list >> Decode.nullable)


type alias StarshipsOptionalArguments =
    { filter : OptionalArgument Api.InputObject.StarshipFilter
    , orderBy : OptionalArgument Api.Enum.StarshipOrderBy.StarshipOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-|

  - filter -

-}
starships : (StarshipsOptionalArguments -> StarshipsOptionalArguments) -> SelectionSet decodesTo Api.Object.Starship -> SelectionSet (Maybe (List decodesTo)) Api.Object.Person
starships fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeStarshipFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.StarshipOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "starships" optionalArgs object_ (identity >> Decode.list >> Decode.nullable)


updatedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.Person
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


type alias VehiclesOptionalArguments =
    { filter : OptionalArgument Api.InputObject.VehicleFilter
    , orderBy : OptionalArgument Api.Enum.VehicleOrderBy.VehicleOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-|

  - filter -

-}
vehicles : (VehiclesOptionalArguments -> VehiclesOptionalArguments) -> SelectionSet decodesTo Api.Object.Vehicle -> SelectionSet (Maybe (List decodesTo)) Api.Object.Person
vehicles fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeVehicleFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.VehicleOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "vehicles" optionalArgs object_ (identity >> Decode.list >> Decode.nullable)


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
filmsMeta_ : (FilmsMetaOptionalArguments -> FilmsMetaOptionalArguments) -> SelectionSet decodesTo Api.Object.QueryMeta_ -> SelectionSet decodesTo Api.Object.Person
filmsMeta_ fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeFilmFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.FilmOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "_filmsMeta" optionalArgs object_ identity


type alias SpeciesMetaOptionalArguments =
    { filter : OptionalArgument Api.InputObject.SpeciesFilter
    , orderBy : OptionalArgument Api.Enum.SpeciesOrderBy.SpeciesOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Meta information about the query.

  - filter -

-}
speciesMeta_ : (SpeciesMetaOptionalArguments -> SpeciesMetaOptionalArguments) -> SelectionSet decodesTo Api.Object.QueryMeta_ -> SelectionSet decodesTo Api.Object.Person
speciesMeta_ fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeSpeciesFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.SpeciesOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "_speciesMeta" optionalArgs object_ identity


type alias StarshipsMetaOptionalArguments =
    { filter : OptionalArgument Api.InputObject.StarshipFilter
    , orderBy : OptionalArgument Api.Enum.StarshipOrderBy.StarshipOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Meta information about the query.

  - filter -

-}
starshipsMeta_ : (StarshipsMetaOptionalArguments -> StarshipsMetaOptionalArguments) -> SelectionSet decodesTo Api.Object.QueryMeta_ -> SelectionSet decodesTo Api.Object.Person
starshipsMeta_ fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeStarshipFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.StarshipOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "_starshipsMeta" optionalArgs object_ identity


type alias VehiclesMetaOptionalArguments =
    { filter : OptionalArgument Api.InputObject.VehicleFilter
    , orderBy : OptionalArgument Api.Enum.VehicleOrderBy.VehicleOrderBy
    , skip : OptionalArgument Int
    , after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| Meta information about the query.

  - filter -

-}
vehiclesMeta_ : (VehiclesMetaOptionalArguments -> VehiclesMetaOptionalArguments) -> SelectionSet decodesTo Api.Object.QueryMeta_ -> SelectionSet decodesTo Api.Object.Person
vehiclesMeta_ fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { filter = Absent, orderBy = Absent, skip = Absent, after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "filter" filledInOptionals.filter Api.InputObject.encodeVehicleFilter, Argument.optional "orderBy" filledInOptionals.orderBy (Encode.enum Api.Enum.VehicleOrderBy.toString), Argument.optional "skip" filledInOptionals.skip Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "_vehiclesMeta" optionalArgs object_ identity
