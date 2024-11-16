execute as @a if items entity @s weapon.* minecraft:clock run function huds:clock/true/run
execute as @a unless items entity @s weapon.* minecraft:clock run function huds:clock/false/run

execute as @e[type=minecraft:item_frame] at @s if items entity @s container.* minecraft:clock unless entity @e[type=text_display,tag=eden.item_frame.clock,distance=..0.5] run function huds:clock/item_frame/add_overlay_normal
execute as @e[type=minecraft:glow_item_frame] at @s if items entity @s container.* minecraft:clock unless entity @e[type=text_display,tag=eden.item_frame.clock,distance=..0.5] run function huds:clock/item_frame/add_overlay_glowing
execute as @e[type=text_display,tag=eden.item_frame.clock] unless score $time_format eden.technical matches 1.. run function huds:clock/item_frame/12_update_time with storage eden:calendar global
execute as @e[type=text_display,tag=eden.item_frame.clock] if score $time_format eden.technical matches 1.. run function huds:clock/item_frame/24_update_time with storage eden:calendar global
execute as @e[type=text_display,tag=eden.item_frame.clock] at @s unless entity @e[type=#eden:item_frames,nbt={Item:{id:"minecraft:clock"}},distance=..0.5] run kill @s

schedule function huds:clock/run 10t