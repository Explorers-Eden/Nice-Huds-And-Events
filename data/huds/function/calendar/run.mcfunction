schedule function huds:calendar/run 1s

execute store result score $raw_daytime eden.technical run time query daytime

execute if score $raw_daytime eden.technical matches 17991..18009 run scoreboard players add $day huds.calendar 1

function huds:calendar/new_day
function huds:calendar/get_time
function huds:calendar/store_dates
function huds:calendar/get_month_name
function huds:calendar/get_season
function huds:calendar/get_weekday
function huds:calendar/get_daypart

execute as @a[limit=1,scores={huds.has_slept=1..}] unless score $sleep_triggered eden.technical matches 1 if score $24_hour huds.calendar matches 6 run function huds:calendar/player_slept

function huds:events/run