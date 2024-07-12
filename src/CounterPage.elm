module CounterPage exposing (main)

import Browser
import Html exposing (Html, div, button, text)
import Html.Events exposing (onClick)

type alias Model = Int
type Msg = Increment | Decrement

main : Program () Model Msg
main =
  Browser.sandbox { init = init, view = view, update = update }

init : Model
init = 
  0

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1
    Decrement ->
      model - 1

view : Model -> Html Msg
view model =
  div []
  [
    button [onClick Decrement] [text "Decrement"]
    , text (String.fromInt model)
    , button [onClick Increment] [text "Increment"]
  ]