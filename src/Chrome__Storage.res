module Sync = {
  external clear: unit => unit = "chrome.storage.sync.clear"
  external clearWithCallback: (unit => unit) => unit = "chrome.storage.sync.clear"

  external set: Js.t<'a> => promise<unit> = "chrome.storage.sync.set"
  external setWithCallback: (Js.t<'a>, unit => unit) => unit = "chrome.storage.sync.set"

  external remove: string => promise<unit> = "chrome.storage.sync.remove"
  external removeMany: array<string> => promise<unit> = "chrome.storage.sync.remove"
  external removeWithCallback: (string, unit => unit) => unit = "chrome.storage.sync.remove"
  external removeManyWithCallback: (array<string>, unit => unit) => unit =
    "chrome.storage.sync.remove"

  external getAll: (Js.t<'a> => unit) => unit = "chrome.storage.sync.get"
  external get: string => promise<Js.t<'a>> = "chrome.storage.sync.get"
  external getMany: array<string> => promise<Js.t<'a>> = "chrome.storage.sync.get"
  external getWithCallback: (string, Js.t<'a> => unit) => unit = "chrome.storage.sync.get"
  external getManyWithCallback: (array<string>, Js.t<'a> => unit) => unit =
    "chrome.storage.sync.get"
}
