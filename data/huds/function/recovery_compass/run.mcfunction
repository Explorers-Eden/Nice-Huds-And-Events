execute as @a if items entity @s weapon.* minecraft:recovery_compass run function huds:recovery_compass/true/run
execute as @a unless items entity @s weapon.* minecraft:recovery_compass run function huds:recovery_compass/false/run

schedule function huds:recovery_compass/run 10t