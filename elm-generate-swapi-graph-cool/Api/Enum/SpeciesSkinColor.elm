-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.Enum.SpeciesSkinColor exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| The skin colors for this species, "UNKNOWN" if not known, null if this species does not typically have a skin.
-}
type SpeciesSkinColor
    = Blue
    | Brown
    | Caucasian
    | Dark
    | Green
    | Grey
    | Magenta
    | Orange
    | Pale
    | Palepink
    | Peach
    | Pink
    | Purple
    | Red
    | Tan
    | Unknown
    | White
    | Yellow
    | Black
    | Asian
    | Hispanic


list : List SpeciesSkinColor
list =
    [ Blue, Brown, Caucasian, Dark, Green, Grey, Magenta, Orange, Pale, Palepink, Peach, Pink, Purple, Red, Tan, Unknown, White, Yellow, Black, Asian, Hispanic ]


decoder : Decoder SpeciesSkinColor
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "BLUE" ->
                        Decode.succeed Blue

                    "BROWN" ->
                        Decode.succeed Brown

                    "CAUCASIAN" ->
                        Decode.succeed Caucasian

                    "DARK" ->
                        Decode.succeed Dark

                    "GREEN" ->
                        Decode.succeed Green

                    "GREY" ->
                        Decode.succeed Grey

                    "MAGENTA" ->
                        Decode.succeed Magenta

                    "ORANGE" ->
                        Decode.succeed Orange

                    "PALE" ->
                        Decode.succeed Pale

                    "PALEPINK" ->
                        Decode.succeed Palepink

                    "PEACH" ->
                        Decode.succeed Peach

                    "PINK" ->
                        Decode.succeed Pink

                    "PURPLE" ->
                        Decode.succeed Purple

                    "RED" ->
                        Decode.succeed Red

                    "TAN" ->
                        Decode.succeed Tan

                    "UNKNOWN" ->
                        Decode.succeed Unknown

                    "WHITE" ->
                        Decode.succeed White

                    "YELLOW" ->
                        Decode.succeed Yellow

                    "BLACK" ->
                        Decode.succeed Black

                    "ASIAN" ->
                        Decode.succeed Asian

                    "HISPANIC" ->
                        Decode.succeed Hispanic

                    _ ->
                        Decode.fail ("Invalid SpeciesSkinColor type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : SpeciesSkinColor -> String
toString enum =
    case enum of
        Blue ->
            "BLUE"

        Brown ->
            "BROWN"

        Caucasian ->
            "CAUCASIAN"

        Dark ->
            "DARK"

        Green ->
            "GREEN"

        Grey ->
            "GREY"

        Magenta ->
            "MAGENTA"

        Orange ->
            "ORANGE"

        Pale ->
            "PALE"

        Palepink ->
            "PALEPINK"

        Peach ->
            "PEACH"

        Pink ->
            "PINK"

        Purple ->
            "PURPLE"

        Red ->
            "RED"

        Tan ->
            "TAN"

        Unknown ->
            "UNKNOWN"

        White ->
            "WHITE"

        Yellow ->
            "YELLOW"

        Black ->
            "BLACK"

        Asian ->
            "ASIAN"

        Hispanic ->
            "HISPANIC"


{-| Convert from a String representation to an elm representation enum.
This is the inverse of the Enum `toString` function. So you can call `toString` and then convert back `fromString` safely.

    Swapi.Enum.Episode.NewHope
        |> Swapi.Enum.Episode.toString
        |> Swapi.Enum.Episode.fromString
        == Just NewHope

This can be useful for generating Strings to use for <select> menus to check which item was selected.

-}
fromString : String -> Maybe SpeciesSkinColor
fromString enumString =
    case enumString of
        "BLUE" ->
            Just Blue

        "BROWN" ->
            Just Brown

        "CAUCASIAN" ->
            Just Caucasian

        "DARK" ->
            Just Dark

        "GREEN" ->
            Just Green

        "GREY" ->
            Just Grey

        "MAGENTA" ->
            Just Magenta

        "ORANGE" ->
            Just Orange

        "PALE" ->
            Just Pale

        "PALEPINK" ->
            Just Palepink

        "PEACH" ->
            Just Peach

        "PINK" ->
            Just Pink

        "PURPLE" ->
            Just Purple

        "RED" ->
            Just Red

        "TAN" ->
            Just Tan

        "UNKNOWN" ->
            Just Unknown

        "WHITE" ->
            Just White

        "YELLOW" ->
            Just Yellow

        "BLACK" ->
            Just Black

        "ASIAN" ->
            Just Asian

        "HISPANIC" ->
            Just Hispanic

        _ ->
            Nothing