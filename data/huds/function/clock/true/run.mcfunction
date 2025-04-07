execute store result storage eden:temp huds.uuid_0 int 1 run data get entity @s UUID[0]
execute store result storage eden:temp huds.uuid_1 int 1 run data get entity @s UUID[1]
execute store result storage eden:temp huds.uuid_2 int 1 run data get entity @s UUID[2]
execute store result storage eden:temp huds.uuid_3 int 1 run data get entity @s UUID[3]

data modify storage eden:temp huds.12_hour set from storage eden:calendar global.12_hour
data modify storage eden:temp huds.24_hour set from storage eden:calendar global.24_hour
data modify storage eden:temp huds.minute set from storage eden:calendar global.minute
data modify storage eden:temp huds.meridiem set from storage eden:calendar global.meridiem
data modify storage eden:temp huds.day set from storage eden:calendar global.day
data modify storage eden:temp huds.month_name set from storage eden:calendar global.month_name
data modify storage eden:temp huds.year set from storage eden:calendar global.year
data modify storage eden:temp huds.season set from storage eden:calendar global.season
data modify storage eden:temp huds.weekday set from storage eden:calendar global.weekday

execute if data storage eden:calendar global{season:"Winter"} run data modify storage eden:temp huds.season_color set value "B8F8FF"
execute if data storage eden:calendar global{season:"Spring"} run data modify storage eden:temp huds.season_color set value "B2FF91"
execute if data storage eden:calendar global{season:"Summer"} run data modify storage eden:temp huds.season_color set value "FFDD54"
execute if data storage eden:calendar global{season:"Autumn"} run data modify storage eden:temp huds.season_color set value "BA652D"

execute if predicate eden:weather/clear run data modify storage eden:temp huds.weather set value {"bold":false,"color":"#FFFC96","italic":false,"text":"☀ "}
execute if predicate eden:weather/rain run data modify storage eden:temp huds.weather set value {"bold":false,"color":"#96D5FF","italic":false,"text":"🌧 "}
execute if predicate eden:weather/thunder run data modify storage eden:temp huds.weather set value {"bold":false,"color":"#FFF82E","italic":false,"text":"⚡ "}

execute unless score $time_format eden.technical matches 1.. run function huds:clock/true/12_update with storage eden:temp huds
execute if score $time_format eden.technical matches 1.. run function huds:clock/true/24_update with storage eden:temp huds