$tellraw @a [\
{"text":"🚩 ","color":"red","bold":false,"italic":false},\
{"selector":"@s","color":"#F5E8C9"},\
{"text":" | ","color":"dark_gray","bold":false,"italic":false},\
{"text":"X","color":"light_purple","bold":false,"italic":false},\
{"text":"Y","color":"green","bold":false,"italic":false},\
{"text":"Z","color":"aqua","bold":false,"italic":false},\
{"text":": ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(Pos0)","color":"#F5E8C9","bold":false,"italic":false},\
{"text":" ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(Pos1)","color":"#F5E8C9","bold":false,"italic":false},\
{"text":" ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(Pos2)","color":"#F5E8C9","bold":false,"italic":false},\
{"text":" | ","color":"dark_gray","bold":false,"italic":false},\
{"text":"$(dimension)","color":"#F5E8C9","bold":false,"italic":false}]


execute at @a run playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~ .6 2
effect give @s minecraft:glowing 15 0 true
scoreboard players set @s send_position 0
data remove storage eden:temp huds