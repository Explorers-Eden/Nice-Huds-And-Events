execute store result storage eden:temp huds.Pos0 int 1 run data get entity @s Pos[0]
execute store result storage eden:temp huds.Pos1 int 1 run data get entity @s Pos[1]
execute store result storage eden:temp huds.Pos2 int 1 run data get entity @s Pos[2]

data modify storage eden:temp huds.dimension set from entity @s Dimension

execute if data storage eden:temp huds{dimension: "minecraft:overworld"} run data modify storage eden:temp huds.dimension set value "Overworld"
execute if data storage eden:temp huds{dimension: "minecraft:the_end"} run data modify storage eden:temp huds.dimension set value "The End"
execute if data storage eden:temp huds{dimension: "minecraft:the_nether"} run data modify storage eden:temp huds.dimension set value "The Nether"
execute if data storage eden:temp huds{dimension: "eden:astral_plane"} run data modify storage eden:temp huds.dimension set value "Astral Plane"
execute if data storage eden:temp huds{dimension: "kattersstructures:deep_blue"} run data modify storage eden:temp huds.dimension set value "Deep Blue"

data modify storage eden:temp huds.12_hour set from storage eden:calendar global.12_hour
data modify storage eden:temp huds.24_hour set from storage eden:calendar global.24_hour
data modify storage eden:temp huds.minute set from storage eden:calendar global.minute
data modify storage eden:temp huds.meridiem set from storage eden:calendar global.meridiem
data modify storage eden:temp huds.day set from storage eden:calendar global.day
data modify storage eden:temp huds.month_name set from storage eden:calendar global.month_name
data modify storage eden:temp huds.year set from storage eden:calendar global.year
data modify storage eden:temp huds.weekday set from storage eden:calendar global.weekday

function huds:send_position/send_msg with storage eden:temp huds

