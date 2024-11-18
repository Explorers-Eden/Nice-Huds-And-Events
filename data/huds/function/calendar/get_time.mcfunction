scoreboard players operation $raw_hours eden.technical = $raw_daytime eden.technical
scoreboard players operation $raw_hours eden.technical /= $5 eden.technical
scoreboard players operation $raw_hours eden.technical *= $18 eden.technical
scoreboard players operation $raw_hours eden.technical /= $60 eden.technical
scoreboard players operation $raw_minutes eden.technical = $raw_hours eden.technical
scoreboard players operation $raw_hours eden.technical /= $60 eden.technical

scoreboard players operation $24_hour huds.calendar = $raw_hours eden.technical
scoreboard players operation $24_hour huds.calendar += $6 eden.technical

scoreboard players operation $raw_hours eden.technical *= $60 eden.technical

scoreboard players operation $minute huds.calendar = $raw_minutes eden.technical
scoreboard players operation $minute huds.calendar -= $raw_hours eden.technical

execute if score $24_hour huds.calendar matches 24.. run scoreboard players operation $24_hour huds.calendar -= $24 eden.technical

execute if score $24_hour huds.calendar matches 0..11 run data modify storage eden:calendar global.meridiem set value "AM"
execute if score $24_hour huds.calendar matches 12..23 run data modify storage eden:calendar global.meridiem set value "PM"

scoreboard players operation $12_hour huds.calendar = $24_hour huds.calendar
execute if score $12_hour huds.calendar matches 13.. run scoreboard players operation $12_hour huds.calendar -= $12 eden.technical