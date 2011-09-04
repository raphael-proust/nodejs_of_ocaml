
let sleep d =
  let (t, w) = Lwt.task () in
  let id = Timers.setTimeout
    (Js.wrap_callback (fun () -> Lwt.wakeup w ()))
    (d *. 1000.)
  in
  Lwt.on_cancel t (fun () -> Timers.clearTimeout(id)) ;
  t

let yield () = sleep 0.

let wakeup = function
  | 1 -> ignore (Timers.setTimeout (Js.wrap_callback Lwt.wakeup_paused) 0.)
  | _ -> ()

let () = Lwt.register_pause_notifier wakeup

