scoreboard players set $time_format eden.technical 1
tellraw @s [{"text":"▊ ","color":"dark_aqua","bold":false,"italic":false},{"text":"Time formats are now shown in 24h mode.","color":"#FFE6B5","bold":false,"italic":false}]
execute at @s run playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~ .6 2