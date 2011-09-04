(*This is not to be used directly, but only for Lwt's sleep/task primitives*)

type timeout_id
external setTimeout : (unit -> 'a) Js.callback -> float -> timeout_id = "setTimeout"
external clearTimeout : timeout_id -> unit = "clearTimeout"

type interval_id
external setInterval : (unit -> 'b) Js.callback -> float -> interval_id = "setInterval"
external clearInterval : interval_id -> unit = "clearInterval"


