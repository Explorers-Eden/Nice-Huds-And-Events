scoreboard players add @a huds.has_died_today 0
execute as @a[scores={huds.has_died_today=..0}] run scoreboard players add @s huds.days_lived.counter 1

execute as @a[scores={huds.days_lived.counter=365..}] run function huds:events/days_lived_counter/add_year
execute as @a[scores={huds.days_lived.counter=365..}] run function huds:events/days_lived_counter/anniversary


scoreboard players reset @a huds.has_died_today