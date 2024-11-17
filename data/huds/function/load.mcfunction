##default technical scoreboard
scoreboard objectives add eden.technical dummy

##additional scoreboards
scoreboard objectives add send_position trigger {"text": "Send Position"}
scoreboard objectives add huds.calendar dummy

##scoreboard math entries
scoreboard players set $5 eden.technical 5
scoreboard players set $6 eden.technical 6
scoreboard players set $12 eden.technical 12
scoreboard players set $18 eden.technical 18
scoreboard players set $24 eden.technical 24
scoreboard players set $60 eden.technical 60
execute unless score $day huds.calendar matches 1.. run scoreboard players set $day huds.calendar 1
execute unless score $month huds.calendar matches 1.. run scoreboard players set $month huds.calendar 1
execute unless score $year huds.calendar matches 1.. run scoreboard players set $year huds.calendar 1

##init schedules
schedule function huds:recovery_compass/run 10t
schedule function huds:compass/run 10t
schedule function huds:clock/run 10t
schedule function huds:send_position/run 1s
schedule function huds:send_position/enable_trigger 60s
schedule function huds:calendar/get_data 1s
schedule function huds:calendar/events/run 1s

##remove temp storage
data remove storage eden:temp huds