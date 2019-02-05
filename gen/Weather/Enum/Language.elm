-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Weather.Enum.Language exposing (Language(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-|

  - Ar - Arabic
  - Bg - Bulgarian
  - Ca - Catalan
  - Cz - Czech
  - De - German
  - El - Greek
  - En - English
  - Fa - Persian (Farsi)
  - Fi - Finnish
  - Fr - French
  - Gl - Galician
  - Hr - Croatian
  - Hu - Hungarian
  - It - Italian
  - Ja - Japanese
  - Kr - Korean
  - La - Latvian
  - Lt - Lithuanian
  - Mk - Macedonian
  - Nl - Dutch
  - Pl - Polish
  - Pt - Portuguese
  - Ro - Romanian
  - Ru - Russian
  - Se - Swedish
  - Sk - Slovak
  - Sl - Slovenian
  - Es - Spanish
  - Tr - Turkish
  - Ua - Ukrainian
  - Vi - Vietnamese
  - Zh\_cn - Chinese Simplified
  - Zh\_tw - Chinese Traditional

-}
type Language
    = Ar
    | Bg
    | Ca
    | Cz
    | De
    | El
    | En
    | Fa
    | Fi
    | Fr
    | Gl
    | Hr
    | Hu
    | It
    | Ja
    | Kr
    | La
    | Lt
    | Mk
    | Nl
    | Pl
    | Pt
    | Ro
    | Ru
    | Se
    | Sk
    | Sl
    | Es
    | Tr
    | Ua
    | Vi
    | Zh_cn
    | Zh_tw


list : List Language
list =
    [ Ar, Bg, Ca, Cz, De, El, En, Fa, Fi, Fr, Gl, Hr, Hu, It, Ja, Kr, La, Lt, Mk, Nl, Pl, Pt, Ro, Ru, Se, Sk, Sl, Es, Tr, Ua, Vi, Zh_cn, Zh_tw ]


decoder : Decoder Language
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "ar" ->
                        Decode.succeed Ar

                    "bg" ->
                        Decode.succeed Bg

                    "ca" ->
                        Decode.succeed Ca

                    "cz" ->
                        Decode.succeed Cz

                    "de" ->
                        Decode.succeed De

                    "el" ->
                        Decode.succeed El

                    "en" ->
                        Decode.succeed En

                    "fa" ->
                        Decode.succeed Fa

                    "fi" ->
                        Decode.succeed Fi

                    "fr" ->
                        Decode.succeed Fr

                    "gl" ->
                        Decode.succeed Gl

                    "hr" ->
                        Decode.succeed Hr

                    "hu" ->
                        Decode.succeed Hu

                    "it" ->
                        Decode.succeed It

                    "ja" ->
                        Decode.succeed Ja

                    "kr" ->
                        Decode.succeed Kr

                    "la" ->
                        Decode.succeed La

                    "lt" ->
                        Decode.succeed Lt

                    "mk" ->
                        Decode.succeed Mk

                    "nl" ->
                        Decode.succeed Nl

                    "pl" ->
                        Decode.succeed Pl

                    "pt" ->
                        Decode.succeed Pt

                    "ro" ->
                        Decode.succeed Ro

                    "ru" ->
                        Decode.succeed Ru

                    "se" ->
                        Decode.succeed Se

                    "sk" ->
                        Decode.succeed Sk

                    "sl" ->
                        Decode.succeed Sl

                    "es" ->
                        Decode.succeed Es

                    "tr" ->
                        Decode.succeed Tr

                    "ua" ->
                        Decode.succeed Ua

                    "vi" ->
                        Decode.succeed Vi

                    "zh_cn" ->
                        Decode.succeed Zh_cn

                    "zh_tw" ->
                        Decode.succeed Zh_tw

                    _ ->
                        Decode.fail ("Invalid Language type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : Language -> String
toString enum =
    case enum of
        Ar ->
            "ar"

        Bg ->
            "bg"

        Ca ->
            "ca"

        Cz ->
            "cz"

        De ->
            "de"

        El ->
            "el"

        En ->
            "en"

        Fa ->
            "fa"

        Fi ->
            "fi"

        Fr ->
            "fr"

        Gl ->
            "gl"

        Hr ->
            "hr"

        Hu ->
            "hu"

        It ->
            "it"

        Ja ->
            "ja"

        Kr ->
            "kr"

        La ->
            "la"

        Lt ->
            "lt"

        Mk ->
            "mk"

        Nl ->
            "nl"

        Pl ->
            "pl"

        Pt ->
            "pt"

        Ro ->
            "ro"

        Ru ->
            "ru"

        Se ->
            "se"

        Sk ->
            "sk"

        Sl ->
            "sl"

        Es ->
            "es"

        Tr ->
            "tr"

        Ua ->
            "ua"

        Vi ->
            "vi"

        Zh_cn ->
            "zh_cn"

        Zh_tw ->
            "zh_tw"
