
type timeout_id
val setTimeout : (unit -> 'b) Js.callback -> float -> timeout_id
val clearTimeout : timeout_id -> unit

type interval_id
val setInterval : (unit -> 'b) Js.callback -> float -> interval_id
val clearInterval : interval_id -> unit

