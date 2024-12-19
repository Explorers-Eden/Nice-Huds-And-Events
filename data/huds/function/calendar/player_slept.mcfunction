scoreboard players operation $hour_slept eden.technical = $24_hour huds.calendar
scoreboard players set $sleep_triggered eden.technical 1

execute if score $hour_slept eden.technical matches 17..23 run return fail
scoreboard players reset * huds.has_slept
scoreboard players reset $sleep_triggered eden.technical