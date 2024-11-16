execute as @a if items entity @s weapon.* minecraft:clock run function huds:clock/true/run
execute as @a unless items entity @s weapon.* minecraft:clock run function huds:clock/false/run

schedule function huds:clock/run 10t