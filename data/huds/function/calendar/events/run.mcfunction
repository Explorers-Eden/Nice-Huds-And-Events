schedule function huds:calendar/events/run 1s
execute if score $trigger_events eden.technical matches 1.. run return fail

execute as @a at @s if score $day huds.calendar matches 1 if score $month huds.calendar matches 4 run function huds:calendar/events/april_fools
execute as @a at @s if score $day huds.calendar matches 24 if score $month huds.calendar matches 12 if score $24_hour huds.calendar matches 0 if score $minute huds.calendar matches 0 run function huds:calendar/events/christmas
execute as @a at @s if predicate eden:percentages/25 if score $day huds.calendar matches 14 if score $month huds.calendar matches 2 run function huds:calendar/events/valentines_day