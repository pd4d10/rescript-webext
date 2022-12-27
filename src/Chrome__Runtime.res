external getURL: string => string = "chrome.runtime.getURL"

external reload: unit => unit = "chrome.runtime.reload"

external sendMessage: ('message, 'response => unit) => unit = "chrome.runtime.sendMessage"
