

let ee1 = jsnew Events.eventEmitter ()
let ee2 = jsnew Events.eventEmitter ()

let toto = Events.event_of_js_string (Js.string "toto")
let foo  = Events.event_of_js_string (Js.string "foo")
let bar  = Events.event_of_js_string (Js.string "bar")

let wrap = Js.wrap_callback

let log pre s = Console.console##log_2(Js.string pre, Js.string s)


let () = ee1##on(toto, wrap (log "1 toto: "))
let () = ee1##on(foo,  wrap (log "1 foo: "))

let () = ee2##on(toto, wrap (log "2 toto: "))
let () = ee2##on(bar,  wrap (fun () -> log "2 bar: " "The end"))

let () = ee1##emit_1(toto, "Oh hai. In teh beginnin Ceiling Cat maded teh skiez An da Urfs, but he did not eated dem.")
let () = ee1##emit_1(foo, "Da Urfs no had shapez An haded dark face, An Ceiling Cat rode invisible bike over teh waterz.")
let () = ee2##emit_1(toto, "At start, no has lyte. An Ceiling Cat sayz, i can haz lite? An lite wuz.")
let () = ee2##emit_1(foo, "This should NOT be printed!")
let () = ee2##emit_0(bar)



