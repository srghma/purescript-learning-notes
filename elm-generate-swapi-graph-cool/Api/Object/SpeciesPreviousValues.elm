-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.SpeciesPreviousValues exposing (..)

import Api.Enum.SpeciesEyeColor
import Api.Enum.SpeciesHairColor
import Api.Enum.SpeciesSkinColor
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


{-| The average height of this species in centimeters.
-}
averageHeight : SelectionSet (Maybe Int) Api.Object.SpeciesPreviousValues
averageHeight =
    Object.selectionForField "(Maybe Int)" "averageHeight" [] (Decode.int |> Decode.nullable)


{-| The average lifespan of this species in years.
-}
averageLifespan : SelectionSet (Maybe Int) Api.Object.SpeciesPreviousValues
averageLifespan =
    Object.selectionForField "(Maybe Int)" "averageLifespan" [] (Decode.int |> Decode.nullable)


{-| The classification of this species, such as "mammal" or "reptile".
-}
classification : SelectionSet (Maybe String) Api.Object.SpeciesPreviousValues
classification =
    Object.selectionForField "(Maybe String)" "classification" [] (Decode.string |> Decode.nullable)


createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.SpeciesPreviousValues
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The designation of this species, such as "sentient".
-}
designation : SelectionSet (Maybe String) Api.Object.SpeciesPreviousValues
designation =
    Object.selectionForField "(Maybe String)" "designation" [] (Decode.string |> Decode.nullable)


{-| The eye colors for this species, "UNKNOWN" if not known, null if this species does not typically have eyes.
-}
eyeColor : SelectionSet (Maybe (List Api.Enum.SpeciesEyeColor.SpeciesEyeColor)) Api.Object.SpeciesPreviousValues
eyeColor =
    Object.selectionForField "(Maybe (List Enum.SpeciesEyeColor.SpeciesEyeColor))" "eyeColor" [] (Api.Enum.SpeciesEyeColor.decoder |> Decode.list |> Decode.nullable)


{-| The hair colors for this species, "UNKNOWN" if not known, null if this species does not typically have hairs.
-}
hairColor : SelectionSet (Maybe (List Api.Enum.SpeciesHairColor.SpeciesHairColor)) Api.Object.SpeciesPreviousValues
hairColor =
    Object.selectionForField "(Maybe (List Enum.SpeciesHairColor.SpeciesHairColor))" "hairColor" [] (Api.Enum.SpeciesHairColor.decoder |> Decode.list |> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.SpeciesPreviousValues
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| indicates if the record is published
-}
isPublished : SelectionSet Bool Api.Object.SpeciesPreviousValues
isPublished =
    Object.selectionForField "Bool" "isPublished" [] Decode.bool


{-| The language commonly spoken by this species.
-}
language : SelectionSet (Maybe String) Api.Object.SpeciesPreviousValues
language =
    Object.selectionForField "(Maybe String)" "language" [] (Decode.string |> Decode.nullable)


{-| The name of this species.
-}
name : SelectionSet String Api.Object.SpeciesPreviousValues
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The skin colors for this species, "UNKNOWN" if not known, null if this species does not typically have a skin.
-}
skinColor : SelectionSet (Maybe (List Api.Enum.SpeciesSkinColor.SpeciesSkinColor)) Api.Object.SpeciesPreviousValues
skinColor =
    Object.selectionForField "(Maybe (List Enum.SpeciesSkinColor.SpeciesSkinColor))" "skinColor" [] (Api.Enum.SpeciesSkinColor.decoder |> Decode.list |> Decode.nullable)


updatedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.SpeciesPreviousValues
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
