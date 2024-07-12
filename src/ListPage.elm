module ListPage exposing (main)

import Browser
import Html exposing (Html, text, div)


main =
  Browser.sandbox { init = init, update = update, view = view }

type alias Model = {}

init : Model
init =
  {}

type Msg =
  NoOp

update : Msg -> Model -> Model
update msg model =
  case msg of
      NoOp ->
        model

view : Model -> Html Msg
view _ =
  div []
    [ text "My first Elm page" ]