execute store result score $halloween_event eden.technical run random value 1..2

execute if score $halloween_event eden.technical matches 1 if predicate eden:percentages/25 run item replace entity @s armor.head with minecraft:carved_pumpkin
execute if score $halloween_event eden.technical matches 2 if predicate eden:percentages/25 run item replace entity @s armor.head with minecraft:jack_o_lantern

tag @s add eden.event.halloween