module Main exposing (..)

import Html exposing (Html, div, text, button)


type alias Model =
    Int


type Msg
    = No0p


init : ( Model, Cmd Msg )
init =
    ( 0, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ button []
            [ text "some request" ]
        , text "hello world"
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
