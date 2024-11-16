schedule function huds:calendar/events/run 1s
execute if score $trigger_events eden.technical matches 1.. run return fail

##actionbar message for new day
execute as @a at @s if score $24_hour huds.calendar matches 0 if score $minute huds.calendar matches 0 run function huds:calendar/events/new_day with storage eden:calendar global

##april fools
execute as @a at @s if score $day huds.calendar matches 1 if score $month huds.calendar matches 4 run function huds:calendar/events/april_fools

##christmas
execute as @a at @s if score $day huds.calendar matches 24 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 0 if score $minute huds.calendar matches 0 run function huds:calendar/events/christmas

##valentines day
execute as @a at @s if predicate eden:percentages/25 if score $day huds.calendar matches 14 if score $month huds.calendar matches 2 run function huds:calendar/events/valentines_day

##halloween
execute as @e[type=#eden:valid_for_carved_pumpkin,tag=!eden.event.halloween] if score $day huds.calendar matches 31 if score $month huds.calendar matches 10 run function huds:calendar/events/halloween/equip_head
execute as @a at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 10 if score $24_hour huds.calendar matches 0 if score $minute huds.calendar matches 0 run function huds:calendar/events/halloween/message

##new year's eve
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 50 run function huds:calendar/events/new_years_eve/10
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 51 run function huds:calendar/events/new_years_eve/9
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 52 run function huds:calendar/events/new_years_eve/8
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 53 run function huds:calendar/events/new_years_eve/7
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 54 run function huds:calendar/events/new_years_eve/6
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 55 run function huds:calendar/events/new_years_eve/5
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 56 run function huds:calendar/events/new_years_eve/4
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 57 run function huds:calendar/events/new_years_eve/3
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 58 run function huds:calendar/events/new_years_eve/2
execute as @s at @s if score $day huds.calendar matches 31 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 23 if score $minute huds.calendar matches 59 run function huds:calendar/events/new_years_eve/1
execute as @s at @s if score $day huds.calendar matches 1 if score $month huds.calendar matches 1 if score $24_hour huds.calendar matches 0 if score $minute huds.calendar matches 0 run function huds:calendar/events/new_years_eve/launch_sound
execute as @s at @s if score $day huds.calendar matches 1 if score $month huds.calendar matches 1 if score $24_hour huds.calendar matches 0 if score $minute huds.calendar matches 2 run function huds:calendar/events/new_years_eve/message

##día de muertos
execute as @e[type=#minecraft:undead] if score $day huds.calendar matches 2 if score $month huds.calendar matches 11 run function huds:calendar/events/muertos/buff_undead
execute as @e[type=#minecraft:undead] if score $day huds.calendar matches 2 if score $month huds.calendar matches 11 if score $24_hour huds.calendar matches 0 if score $minute huds.calendar matches 0 run function huds:calendar/events/muertos/message