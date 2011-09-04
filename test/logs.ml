
open Console

let () = console##log(Js.string "Everything is all right")
let () = console##info(Js.string "foo bar toto blah")
let () = console##warn(Js.string "Is smthg wrong?")
let () = console##error(Js.string "No!")

let util = Utils.util

let () = util##debug(util##inspect(util))
let () = util##debug(util##inspect("blah"))
