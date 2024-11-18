execute as @a if data entity @s LastDeathLocation run function huds:recovery_compass/update/get_data

schedule function huds:recovery_compass/update/run 10s