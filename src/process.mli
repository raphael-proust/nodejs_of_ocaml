
class type process = object

  inherit Events.eventEmitter


(* TODO: support js exceptions
  method uncaughtException: (jsexc -> unit) Event.event Js.readonly_prop
*)

  method stdout: Streams.writableStream Js.t Js.readonly_prop
  method stderr: Streams.writableStream Js.t Js.readonly_prop
  method stdin : Streams.readableStream Js.t Js.readonly_prop

  (*TODO? make writable*)
  method argv: Js.js_string Js.t Js.js_array Js.t Js.readonly_prop

  method execPath: Js.js_string Js.t Js.readonly_prop

  method chdir: Js.js_string Js.t -> unit Js.meth
  method cwd: Js.js_string Js.t Js.meth

(* TODO: find appropriate type. (string * string) array ?
  method env
*)

  method exit  : int -> unit Js.meth
  method exit_0: unit Js.meth

  method getgid    : int Js.meth
  method setgid    : int -> unit Js.meth
  method getuid    : int Js.meth
  method setuid    : int -> unit Js.meth
  method pid       : int Js.readonly_prop
  method title     : Js.js_string Js.t Js.prop
  method arch      : Js.js_string Js.t Js.readonly_prop
  method platform  : Js.js_string Js.t Js.readonly_prop
  method umask_get : int Js.meth
  method umask_set : int -> unit Js.meth
  method uptime    : int Js.meth

  method version: Js.js_string Js.t Js.readonly_prop
  method installPrefix: Js.js_string Js.t Js.readonly_prop

  (*TODO: sum type for signals*)
  method kill        : int -> Js.js_string Js.t -> unit Js.meth
  method kill_sigterm: int -> unit Js.meth

(* TODO: find appropriate type
  method memoryUsage:
*)

  method nextTick: (unit -> unit) Js.callback -> unit Js.meth

end

val exit : (unit -> unit) Events.event

val sigint : (unit -> unit) Events.event
(*TODO: more signals*)

val process: process Js.t

