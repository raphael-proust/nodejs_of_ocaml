
(**Documentation for events in Nodejs is available at:
  http://nodejs.org/docs/v0.5.5/api/events.html
*)

type 'a event

val event_of_js_string : Js.js_string Js.t -> 'a event
val js_string_of_event : 'a event -> Js.js_string Js.t

class type eventEmitter = object

  method addListener : 'a event -> 'a Js.callback -> unit Js.meth
  method on          : 'a event -> 'a Js.callback -> unit Js.meth

  method once        : 'a event -> 'a Js.callback -> unit Js.meth

  method removeListener : 'a event -> 'a Js.callback -> unit Js.meth

  method removeAllListener     : 'a event -> unit Js.meth
  method removeAllListener_all : unit Js.meth

  method setMaxListeners : int -> unit Js.meth

  method listeners : 'a event -> 'a Js.callback Js.js_array Js.t

  method emit_0 : (unit -> unit) event -> unit Js.meth
  method emit_1 : ('a -> unit) event -> 'a -> unit Js.meth
  method emit_2 : ('a -> 'b -> unit) event -> 'a -> 'b -> unit Js.meth
  method emit_3 : ('a -> 'b -> 'c -> unit) event -> 'a -> 'b -> 'c -> unit Js.meth

  method newListener: ('a event -> 'a Js.callback -> unit) event Js.readonly_prop

end

val eventEmitter : eventEmitter Js.t Js.constr
