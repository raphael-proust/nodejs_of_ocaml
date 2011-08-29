
(** Documentation for the util module is available at:
  http://nodejs.org/docs/v0.5.5/api/util.html
  *)

class type util = object

(* TODO: update node and uncomment
  method format  : Js.js_string Js.t ->  Js.js_string Js.t Js.meth
  method format_1: Js.js_string Js.t -> 'a ->  Js.js_string Js.t Js.meth
  method format_2: Js.js_string Js.t -> 'a -> 'b ->  Js.js_string Js.t Js.meth
  method format_3: Js.js_string Js.t -> 'a -> 'b -> 'c ->  Js.js_string Js.t Js.meth
  method format_4: Js.js_string Js.t -> 'a -> 'b -> 'c -> 'd ->  Js.js_string Js.t Js.meth

  method format_raw1: 'a ->  Js.js_string Js.t Js.meth
  method format_raw2: 'a -> 'b ->  Js.js_string Js.t Js.meth
  method format_raw3: 'a -> 'b -> 'c ->  Js.js_string Js.t Js.meth
  method format_raw4: 'a -> 'b -> 'c -> 'd ->  Js.js_string Js.t Js.meth
  method format_raw5: 'a -> 'b -> 'c -> 'd -> 'e ->  Js.js_string Js.t Js.meth
*)

  (*WARNING: synchronous blocking call*)
  method debug: Js.js_string Js.t -> unit Js.meth

  method log: Js.js_string Js.t -> unit Js.meth

  method inspect           : 'a -> Js.js_string Js.t Js.meth
  method inspect_showHidden: 'a -> bool Js.t -> Js.js_string Js.t Js.meth
  method inspect_depth     : 'a -> bool Js.t -> int Js.Opt.t -> Js.js_string Js.t Js.meth

(* TODO: needs Stream
  method pump
*)

(* Should probably not be exposed!
  method inherits
*)

end

let util : util Js.t = Js.Unsafe.variable "require('util')"
