execute store result storage eden:calendar global.24_hour int 1 run scoreboard players get $24_hour huds.calendar
execute store result storage eden:calendar global.12_hour int 1 run scoreboard players get $12_hour huds.calendar
execute store result storage eden:calendar global.minute int 1 run scoreboard players get $minute huds.calendar
execute store result storage eden:calendar global.day int 1 run scoreboard players get $day huds.calendar
execute store result storage eden:calendar global.month int 1 run scoreboard players get $month huds.calendar
execute store result storage eden:calendar global.year int 1 run scoreboard players get $year huds.calendar

execute if data storage eden:calendar global{12_hour: 0} run data modify storage eden:calendar global.12_hour set value "00"
execute if data storage eden:calendar global{12_hour: 1} run data modify storage eden:calendar global.12_hour set value "01"
execute if data storage eden:calendar global{12_hour: 2} run data modify storage eden:calendar global.12_hour set value "02"
execute if data storage eden:calendar global{12_hour: 3} run data modify storage eden:calendar global.12_hour set value "03"
execute if data storage eden:calendar global{12_hour: 4} run data modify storage eden:calendar global.12_hour set value "04"
execute if data storage eden:calendar global{12_hour: 5} run data modify storage eden:calendar global.12_hour set value "05"
execute if data storage eden:calendar global{12_hour: 6} run data modify storage eden:calendar global.12_hour set value "06"
execute if data storage eden:calendar global{12_hour: 7} run data modify storage eden:calendar global.12_hour set value "07"
execute if data storage eden:calendar global{12_hour: 8} run data modify storage eden:calendar global.12_hour set value "08"
execute if data storage eden:calendar global{12_hour: 9} run data modify storage eden:calendar global.12_hour set value "09"

execute if data storage eden:calendar global{24_hour: 0} run data modify storage eden:calendar global.24_hour set value "00"
execute if data storage eden:calendar global{24_hour: 1} run data modify storage eden:calendar global.24_hour set value "01"
execute if data storage eden:calendar global{24_hour: 2} run data modify storage eden:calendar global.24_hour set value "02"
execute if data storage eden:calendar global{24_hour: 3} run data modify storage eden:calendar global.24_hour set value "03"
execute if data storage eden:calendar global{24_hour: 4} run data modify storage eden:calendar global.24_hour set value "04"
execute if data storage eden:calendar global{24_hour: 5} run data modify storage eden:calendar global.24_hour set value "05"
execute if data storage eden:calendar global{24_hour: 6} run data modify storage eden:calendar global.24_hour set value "06"
execute if data storage eden:calendar global{24_hour: 7} run data modify storage eden:calendar global.24_hour set value "07"
execute if data storage eden:calendar global{24_hour: 8} run data modify storage eden:calendar global.24_hour set value "08"
execute if data storage eden:calendar global{24_hour: 9} run data modify storage eden:calendar global.24_hour set value "09"

execute if data storage eden:calendar global{minute: 0} run data modify storage eden:calendar global.minute set value "00"
execute if data storage eden:calendar global{minute: 1} run data modify storage eden:calendar global.minute set value "01"
execute if data storage eden:calendar global{minute: 2} run data modify storage eden:calendar global.minute set value "02"
execute if data storage eden:calendar global{minute: 3} run data modify storage eden:calendar global.minute set value "03"
execute if data storage eden:calendar global{minute: 4} run data modify storage eden:calendar global.minute set value "04"
execute if data storage eden:calendar global{minute: 5} run data modify storage eden:calendar global.minute set value "05"
execute if data storage eden:calendar global{minute: 6} run data modify storage eden:calendar global.minute set value "06"
execute if data storage eden:calendar global{minute: 7} run data modify storage eden:calendar global.minute set value "07"
execute if data storage eden:calendar global{minute: 8} run data modify storage eden:calendar global.minute set value "08"
execute if data storage eden:calendar global{minute: 9} run data modify storage eden:calendar global.minute set value "09"