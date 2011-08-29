
(** Documentation for the console module is available at:
  http://nodejs.org/docs/v0.5.5/api/stdio.html
  *)

class type console = object

  method log   : 'a -> unit Js.meth
  method log_2 : 'a -> 'b -> unit Js.meth
  method log_3 : 'a -> 'b -> 'c -> unit Js.meth
  method log_4 : 'a -> 'b -> 'c -> 'd -> unit Js.meth
  method log_5 : 'a -> 'b -> 'c -> 'd -> 'e -> unit Js.meth
  method log_6 : 'a -> 'b -> 'c -> 'd -> 'e -> 'f -> unit Js.meth

  method info   : 'a -> unit Js.meth
  method info_2 : 'a -> 'b -> unit Js.meth
  method info_3 : 'a -> 'b -> 'c -> unit Js.meth
  method info_4 : 'a -> 'b -> 'c -> 'd -> unit Js.meth
  method info_5 : 'a -> 'b -> 'c -> 'd -> 'e -> unit Js.meth
  method info_6 : 'a -> 'b -> 'c -> 'd -> 'e -> 'f -> unit Js.meth

  method warn   : 'a -> unit Js.meth
  method warn_2 : 'a -> 'b -> unit Js.meth
  method warn_3 : 'a -> 'b -> 'c -> unit Js.meth
  method warn_4 : 'a -> 'b -> 'c -> 'd -> unit Js.meth
  method warn_5 : 'a -> 'b -> 'c -> 'd -> 'e -> unit Js.meth
  method warn_6 : 'a -> 'b -> 'c -> 'd -> 'e -> 'f -> unit Js.meth

  method error   : 'a -> unit Js.meth
  method error_2 : 'a -> 'b -> unit Js.meth
  method error_3 : 'a -> 'b -> 'c -> unit Js.meth
  method error_4 : 'a -> 'b -> 'c -> 'd -> unit Js.meth
  method error_5 : 'a -> 'b -> 'c -> 'd -> 'e -> unit Js.meth
  method error_6 : 'a -> 'b -> 'c -> 'd -> 'e -> 'f -> unit Js.meth

  method dir : 'a -> unit Js.meth

  method time : Js.js_string Js.t -> unit Js.meth
  method timeEnd : Js.js_string Js.t -> unit Js.meth

  method trace : unit -> unit Js.meth

  method assert_ : bool Js.t -> unit Js.meth
  method assert_poly : 'a -> unit Js.meth

end

let console : console Js.t = Js.Unsafe.variable "console"

