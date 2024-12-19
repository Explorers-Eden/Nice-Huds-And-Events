scoreboard players add $day huds.calendar 1
function huds:calendar/get_weekday

execute as @a at @s run function huds:events/new_day with storage eden:calendar global

execute as @a at @s if score $day huds.calendar matches 24 if score $month huds.calendar matches 12 run function huds:events/christmas
execute as @a at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 10 run function huds:events/halloween/message
execute as @a at @s if score $day huds.calendar matches 2 if score $month huds.calendar matches 11 run function huds:events/muertos/message
execute as @a at @s if score $day huds.calendar matches 1 if score $month huds.calendar matches 4 run function huds:events/easter/message