#!/bin/bash

ctrlkeys=("a" "b" "c" "d" "f" "h" "n" "p" "q" "r" "s" "t" "v" "x" "z" "w")

for key in "${ctrlkeys[@]}"
do
  echo "mapping for ctrl-$key to alt-$key"
  echo "keyboard.send_keys('<ctrl>+$key')" > alt-$key.py
cat >.alt-$key.json <<kyng
{
    "type": "script",
    "description": "alt-$key",
    "store": {},
    "modes": [
        3
    ],
    "usageCount": 0,
    "prompt": false,
    "omitTrigger": false,
    "showInTrayMenu": false,
    "abbreviation": {
        "abbreviations": [],
        "backspace": true,
        "ignoreCase": false,
        "immediate": false,
        "triggerInside": false,
        "wordChars": "[\\\w]"
    },
    "hotkey": {
        "modifiers": [
            "<alt>"
        ],
        "hotKey": "$key"
    },
    "filter": {
        "regex": null,
        "isRecursive": false
    }
}
kyng
done
