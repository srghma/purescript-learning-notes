-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Object.VehiclePreviousValues exposing (..)

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
cargoCapacity : SelectionSet (Maybe Int) Api.Object.VehiclePreviousValues
cargoCapacity =
    Object.selectionForField "(Maybe Int)" "cargoCapacity" [] (Decode.int |> Decode.nullable)


{-| The class of this vehicle, such as "Wheeled" or "Repulsorcraft".
-}
class : SelectionSet (Maybe String) Api.Object.VehiclePreviousValues
class =
    Object.selectionForField "(Maybe String)" "class" [] (Decode.string |> Decode.nullable)


{-| The maximum length of time that this vehicle can provide consumables for its entire crew without having to resupply.
-}
consumables : SelectionSet (Maybe String) Api.Object.VehiclePreviousValues
consumables =
    Object.selectionForField "(Maybe String)" "consumables" [] (Decode.string |> Decode.nullable)


{-| The cost of this vehicle new, in Galactic Credits.
-}
costInCredits : SelectionSet (Maybe Int) Api.Object.VehiclePreviousValues
costInCredits =
    Object.selectionForField "(Maybe Int)" "costInCredits" [] (Decode.int |> Decode.nullable)


createdAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.VehiclePreviousValues
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The number of personnel needed to run or pilot this vehicle.
-}
crew : SelectionSet (Maybe Int) Api.Object.VehiclePreviousValues
crew =
    Object.selectionForField "(Maybe Int)" "crew" [] (Decode.int |> Decode.nullable)


id : SelectionSet Api.ScalarCodecs.Id Api.Object.VehiclePreviousValues
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| indicates if the record is published
-}
isPublished : SelectionSet Bool Api.Object.VehiclePreviousValues
isPublished =
    Object.selectionForField "Bool" "isPublished" [] Decode.bool


{-| The length of this vehicle in meters.
-}
length : SelectionSet (Maybe Float) Api.Object.VehiclePreviousValues
length =
    Object.selectionForField "(Maybe Float)" "length" [] (Decode.float |> Decode.nullable)


{-| The manufacturer of this vehicle.
-}
manufacturer : SelectionSet (Maybe (List String)) Api.Object.VehiclePreviousValues
manufacturer =
    Object.selectionForField "(Maybe (List String))" "manufacturer" [] (Decode.string |> Decode.list |> Decode.nullable)


{-| The maximum speed of this vehicle in the atmosphere.
-}
maxAtmospheringSpeed : SelectionSet (Maybe Int) Api.Object.VehiclePreviousValues
maxAtmospheringSpeed =
    Object.selectionForField "(Maybe Int)" "maxAtmospheringSpeed" [] (Decode.int |> Decode.nullable)


{-| The model or official name of this vehicle. Such as "All-Terrain Attack Transport".
-}
model : SelectionSet (Maybe String) Api.Object.VehiclePreviousValues
model =
    Object.selectionForField "(Maybe String)" "model" [] (Decode.string |> Decode.nullable)


{-| The name of this vehicle. The common name, such as "Sand Crawler" or "Speeder bike".
-}
name : SelectionSet String Api.Object.VehiclePreviousValues
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The number of non-essential people this vehicle can transport.
-}
passengers : SelectionSet (Maybe Int) Api.Object.VehiclePreviousValues
passengers =
    Object.selectionForField "(Maybe Int)" "passengers" [] (Decode.int |> Decode.nullable)


updatedAt : SelectionSet Api.ScalarCodecs.DateTime Api.Object.VehiclePreviousValues
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.ScalarCodecs.codecs |> Api.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
