$title @s actionbar [{"bold":false,"color":"dark_gray","italic":false,"text":"- "},{"bold":false,"color":"gray","italic":false,"text":"$(weekday)"},{"bold":false,"color":"gray","italic":false,"text":": "},{"bold":false,"color":"gray","italic":false,"text":"$(month_name) $(day), $(year)"},{"bold":false,"color":"dark_gray","italic":false,"text":" -"}]
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.5 1

execute if score $day huds.calendar matches 24 if score $month huds.calendar matches 12 run function huds:events/christmas
execute if score $day huds.calendar matches 31 if score $month huds.calendar matches 10 run function huds:events/halloween/message
execute if score $day huds.calendar matches 2 if score $month huds.calendar matches 11 run function huds:events/muertos/message
execute if score $day huds.calendar matches 1 if score $month huds.calendar matches 4 run function huds:events/easter/message

scoreboard players reset * huds.has_slept
scoreboard players reset $sleep_triggered eden.technical
scoreboard players reset $sleep_msg_scheduled eden.technical

function huds:events/days_lived_counter/run