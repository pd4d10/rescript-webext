type titleDetails = {title: string, tabId?: int}

@scope("chrome.browserAction")
external setTitle: titleDetails => promise<unit> = "setTitle"

@scope("chrome.browserAction")
external setTitleWithCallback: (titleDetails, unit => unit) => unit = "setTitle"

type tabIconDetails = {path?: string, tabId?: int, imageData?: Webapi.Dom.Image.t}

@scope("chrome.browserAction")
external setIcon: tabIconDetails => unit = "setIcon"
