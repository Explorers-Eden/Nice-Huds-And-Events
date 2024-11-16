execute store result storage eden:temp huds.Pos0 int 1 run data get entity @s Pos[0]
execute store result storage eden:temp huds.Pos1 int 1 run data get entity @s Pos[1]
execute store result storage eden:temp huds.Pos2 int 1 run data get entity @s Pos[2]

data modify storage eden:temp huds.dimension set from entity @s Dimension

execute if data storage eden:temp huds{dimension: "minecraft:overworld"} run data modify storage eden:temp huds.dimension set value "Overworld"
execute if data storage eden:temp huds{dimension: "minecraft:the_end"} run data modify storage eden:temp huds.dimension set value "The End"
execute if data storage eden:temp huds{dimension: "minecraft:the_nether"} run data modify storage eden:temp huds.dimension set value "The Nether"
execute if data storage eden:temp huds{dimension: "eden:astral_plane"} run data modify storage eden:temp huds.dimension set value "Astral Plane"
execute if data storage eden:temp huds{dimension: "kattersstructures:deep_blue"} run data modify storage eden:temp huds.dimension set value "Deep Blue"

function huds:send_position/send_msg with storage eden:temp huds

