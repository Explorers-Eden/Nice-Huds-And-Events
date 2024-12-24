$title @s actionbar [{"bold":false,"color":"white","italic":false,"text":"- "},{"bold":false,"color":"#FFE6B5","italic":false,"text":"$(weekday)"},{"bold":false,"color":"gray","italic":false,"text":": "},{"bold":false,"color":"#FFE6B5","italic":false,"text":"$(month_name) $(day), $(year)"},{"bold":false,"color":"white","italic":false,"text":" -"}]
playsound minecraft:ui.cartography_table.take_result master @s ~ ~ ~ 0.5 1

function huds:events/weather/run

scoreboard players reset * huds.has_slept
scoreboard players reset $sleep_triggered eden.technical
scoreboard players reset $sleep_msg_scheduled eden.technical