execute if score $month huds.calendar matches 1..2 run return run data modify storage eden:calendar global.season set value "Winter"
execute if score $month huds.calendar matches 3..5 run return run data modify storage eden:calendar global.season set value "Spring"
execute if score $month huds.calendar matches 6..8 run return run data modify storage eden:calendar global.season set value "Summer"
execute if score $month huds.calendar matches 9..11 run return run data modify storage eden:calendar global.season set value "Autumn"
execute if score $month huds.calendar matches 12 run return run data modify storage eden:calendar global.season set value "Winter"