execute as @s[x_rotation=0,y_rotation=0] run summon text_display ~ ~-.3 ~.05 {billboard:"fixed",shadow:1b,alignment:"center",Tags:["eden.item_frame.clock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.3f,.3f,.3f]},text:'{"bold":false,"color":"#FFE6B5","italic":false,"text":"Clock"}',default_background:1b}
execute as @s[x_rotation=0,y_rotation=90] run summon text_display ~-.05 ~-.3 ~ {billboard:"fixed",shadow:1b,alignment:"center",Tags:["eden.item_frame.clock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.3f,.3f,.3f]},text:'{"bold":false,"color":"#FFE6B5","italic":false,"text":"Clock"}',default_background:1b}
execute as @s[x_rotation=0,y_rotation=270] run summon text_display ~.05 ~-.3 ~ {billboard:"fixed",shadow:1b,alignment:"center",Tags:["eden.item_frame.clock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.3f,.3f,.3f]},text:'{"bold":false,"color":"#FFE6B5","italic":false,"text":"Clock"}',default_background:1b}
execute as @s[x_rotation=0,y_rotation=180] run summon text_display ~ ~-.3 ~-.05 {billboard:"fixed",shadow:1b,alignment:"center",Tags:["eden.item_frame.clock"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.3f,.3f,.3f]},text:'{"bold":false,"color":"#FFE6B5","italic":false,"text":"Clock"}',default_background:1b}

execute store result entity @n[type=text_display,tag=eden.item_frame.clock] Rotation[0] float 0.0001 run data get entity @s Rotation[0] 10000