execute store result storage eden:calendar global.day int 1 run scoreboard players add $day huds.calendar 1
function huds:calendar/get_weekday

execute as @a at @s run function huds:events/new_day with storage eden:calendar global