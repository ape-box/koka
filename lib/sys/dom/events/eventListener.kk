public module sys/dom/events/eventListener

// Interface EventListener (generated by esidl 0.2.0).

import sys/dom/types

/* safe and unsafe conversion from all types including `any */
external inline maybeEventListener  : forall<a> (a) -> maybe<eventListener>
{ inline "(#1.toString()==='[object EventListener]'?std_core.Just(#1):std_core.Nothing)" }
external inline toEventListener : forall<a> (a) -> exn eventListener
{ inline "(#1.toString()==='[object EventListener]'?#1:std_core.error('toEventListener: cast failed'))" }


// EventListener implements EventListener (supplemental)
external inline handleEvent : (this: eventListener, event: event) -> dom ()
{ inline "#1.handleEvent(#2)" }

