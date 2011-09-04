
class type readableStream = object

  inherit Events.eventEmitter

  (*TODO: rip alternative runtime with strings as buffers from mirage
  method data : (string -> unit) Events.event Js.readonly_prop
  *)

  method end_: (unit -> unit) Events.event Js.readonly_prop

  (*TODO: support js exceptions*)
  method error: ('a Js.t -> unit) Events.event Js.readonly_prop

  method close: (unit -> unit) Events.event Js.readonly_prop

(*TODO: support fds
  method fd: (fd -> unit) Events.event Js.readonly_prop
*)

  method readable: bool Js.t Js.readonly_prop

  (*TODO: sum type for encodings*)
  method setEncoding: Js.js_string Js.t -> unit Js.meth

  method pause: unit Js.meth
  method resume: unit Js.meth

  method destroy: unit Js.meth
  method destroySoon: unit Js.meth

  (*TODO: options*)
  method pipe: writableStream Js.t -> unit Js.meth

end

and writableStream = object

  inherit Events.eventEmitter

  method drain : (unit -> unit) Events.event Js.readonly_prop

  (*TODO: support js exceptions*)
  method error: ('a Js.t -> unit) Events.event Js.readonly_prop

  method close: (unit -> unit) Events.event Js.readonly_prop

  method pipe: (readableStream Js.t -> unit) Events.event Js.readonly_prop

  method writable: bool Js.t Js.readonly_prop

  (*TODO: rip alternative runtime with strings as buffers from mirage
  method write: string -> unit Js.meth
  *)
  method write_string: Js.js_string Js.t -> unit Js.meth
  (*TODO: sum type for encodings*)
  method write_encoding: Js.js_string Js.t -> Js.js_string Js.t -> unit Js.meth

  (*TODO: support writing of fd*)

  method end_: unit Js.meth
  (*TODO: rip alternative runtime with strings as buffers from mirage
  method end_string: string Js.meth
  *)
  method end_jsstring: Js.js_string Js.t Js.meth

  method destroy: unit Js.meth
  method destroySoon: unit Js.meth

end
