type titleDetails = {title: string, tabId?: int}

external setTitle: titleDetails => promise<unit> = "chrome.browserAction.setTitle"

external setTitleWithCallback: (titleDetails, unit => unit) => unit =
  "chrome.browserAction.setTitle"

type tabIconDetails = {path?: string, tabId?: int, imageData?: Webapi.Dom.Image.t}

external setIcon: tabIconDetails => unit = "chrome.browserAction.setIcon"
