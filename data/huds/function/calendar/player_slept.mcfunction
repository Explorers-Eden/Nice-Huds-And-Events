scoreboard players add $day huds.calendar 1
scoreboard players add $sleep_triggered eden.technical 1
schedule function huds:calendar/sleep_trigger 10s replace

execute if data storage eden:calendar global{weekday: "Sunday"} run return run data modify storage eden:calendar global.weekday set value "Monday"
execute if data storage eden:calendar global{weekday: "Saturday"} run return run data modify storage eden:calendar global.weekday set value "Sunday"
execute if data storage eden:calendar global{weekday: "Friday"} run return run data modify storage eden:calendar global.weekday set value "Saturday"
execute if data storage eden:calendar global{weekday: "Thursday"} run return run data modify storage eden:calendar global.weekday set value "Friday"
execute if data storage eden:calendar global{weekday: "Wednesday"} run return run data modify storage eden:calendar global.weekday set value "Thursday"
execute if data storage eden:calendar global{weekday: "Tuesday"} run return run data modify storage eden:calendar global.weekday set value "Wednesday"
execute if data storage eden:calendar global{weekday: "Monday"} run return run data modify storage eden:calendar global.weekday set value "Tuesday"