execute store result score $raw_daytime eden.technical run time query daytime

execute if score $raw_daytime eden.technical matches 17995..18005 run scoreboard players add $day huds.calendar 1

execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 1 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 2 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 29.. if score $month huds.calendar matches 2 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 29.. if score $month huds.calendar matches 3 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 3 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 4 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 31.. if score $month huds.calendar matches 4 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 31.. if score $month huds.calendar matches 5 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 5 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 6 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 31.. if score $month huds.calendar matches 6 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 31.. if score $month huds.calendar matches 7 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 7 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 8 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 8 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 9 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 31.. if score $month huds.calendar matches 9 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 31.. if score $month huds.calendar matches 10 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 10 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 11 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 31.. if score $month huds.calendar matches 11 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 31.. if score $month huds.calendar matches 12 run scoreboard players set $day huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 12 run scoreboard players add $month huds.calendar 1
execute if score $day huds.calendar matches 32.. if score $month huds.calendar matches 13 run scoreboard players set $day huds.calendar 1

execute if score $month huds.calendar matches 13 run scoreboard players add $year huds.calendar 1
execute if score $month huds.calendar matches 13 run scoreboard players set $month huds.calendar 1

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

execute store result storage eden:calendar global.24_hour int 1 run scoreboard players get $24_hour huds.calendar
execute store result storage eden:calendar global.12_hour int 1 run scoreboard players get $12_hour huds.calendar
execute store result storage eden:calendar global.minute int 1 run scoreboard players get $minute huds.calendar
execute store result storage eden:calendar global.day int 1 run scoreboard players get $day huds.calendar
execute store result storage eden:calendar global.month int 1 run scoreboard players get $month huds.calendar
execute store result storage eden:calendar global.year int 1 run scoreboard players get $year huds.calendar

execute if score $month huds.calendar matches 1 run data modify storage eden:calendar global.month_name set value "January"
execute if score $month huds.calendar matches 2 run data modify storage eden:calendar global.month_name set value "February"
execute if score $month huds.calendar matches 3 run data modify storage eden:calendar global.month_name set value "March"
execute if score $month huds.calendar matches 4 run data modify storage eden:calendar global.month_name set value "April"
execute if score $month huds.calendar matches 5 run data modify storage eden:calendar global.month_name set value "May"
execute if score $month huds.calendar matches 6 run data modify storage eden:calendar global.month_name set value "June"
execute if score $month huds.calendar matches 7 run data modify storage eden:calendar global.month_name set value "July"
execute if score $month huds.calendar matches 8 run data modify storage eden:calendar global.month_name set value "August"
execute if score $month huds.calendar matches 9 run data modify storage eden:calendar global.month_name set value "September"
execute if score $month huds.calendar matches 10 run data modify storage eden:calendar global.month_name set value "October"
execute if score $month huds.calendar matches 11 run data modify storage eden:calendar global.month_name set value "November"
execute if score $month huds.calendar matches 12 run data modify storage eden:calendar global.month_name set value "December"

execute if score $month huds.calendar matches 1..2 run data modify storage huds:calendar global.season set value "Winter"
execute if score $month huds.calendar matches 3..5 run data modify storage huds:calendar global.season set value "Spring"
execute if score $month huds.calendar matches 6..8 run data modify storage huds:calendar global.season set value "Summer"
execute if score $month huds.calendar matches 9..11 run data modify storage huds:calendar global.season set value "Autumn"
execute if score $month huds.calendar matches 12 run data modify storage huds:calendar global.season set value "Winter"

schedule function huds:calendar/get_data 1s