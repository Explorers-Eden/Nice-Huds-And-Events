execute store result storage eden:temp huds.uuid_0 int 1 run data get entity @s UUID[0]
execute store result storage eden:temp huds.uuid_1 int 1 run data get entity @s UUID[1]
execute store result storage eden:temp huds.uuid_2 int 1 run data get entity @s UUID[2]
execute store result storage eden:temp huds.uuid_3 int 1 run data get entity @s UUID[3]

execute store result storage eden:temp huds.posx int 1 run data get entity @s LastDeathLocation.pos[0]
execute store result storage eden:temp huds.posy int 1 run data get entity @s LastDeathLocation.pos[1]
execute store result storage eden:temp huds.posz int 1 run data get entity @s LastDeathLocation.pos[2]

data modify storage eden:temp huds.dimension set from entity @s LastDeathLocation.dimension

execute if data storage eden:temp huds{dimension: "minecraft:overworld"} run data modify storage eden:temp huds.dimension_name set value "Overworld"
execute if data storage eden:temp huds{dimension: "minecraft:the_end"} run data modify storage eden:temp huds.dimension_name set value "The End"
execute if data storage eden:temp huds{dimension: "minecraft:the_nether"} run data modify storage eden:temp huds.dimension_name set value "The Nether"
execute if data storage eden:temp huds{dimension: "eden:astral_plane"} run data modify storage eden:temp huds.dimension_name set value "Astral Plane"
execute if data storage eden:temp huds{dimension: "kattersstructures:deep_blue"} run data modify storage eden:temp huds.dimension_name set value "Deep Blue"

function huds:recovery_compass/update/set_data with storage eden:temp huds