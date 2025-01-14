$execute unless score $time_format eden.technical matches 1.. run \
tellraw @s [\
{"text":"▊ ","color":"aqua","bold":false,"italic":false},\
{"text":"Time: ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(12_hour):$(minute) $(meridiem)","color":"gray","bold":false,"italic":false},\
{"text":" | ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(daypart)","color":"gray","bold":false,"italic":false}]

$execute if score $time_format eden.technical matches 1.. run \
tellraw @s [\
{"text":"▊ ","color":"aqua","bold":false,"italic":false},\
{"text":"Time: ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(24_hour):$(minute)","color":"gray","bold":false,"italic":false},\
{"text":" | ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(daypart)","color":"gray","bold":false,"italic":false}]

$tellraw @s [\
{"text":"▊ ","color":"aqua","bold":false,"italic":false},\
{"text":"Date: ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(weekday)","color":"gray","bold":false,"italic":false},\
{"text":" | ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(month_name) $(day), $(year)","color":"gray","bold":false,"italic":false}]

$tellraw @s [\
{"text":"▊ ","color":"aqua","bold":false,"italic":false},\
{"text":"Season: ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(season)","color":"gray","bold":false,"italic":false}]

execute at @s run playsound minecraft:entity.chicken.egg neutral @s ~ ~ ~ .6 2
scoreboard players set @s get_date 0