$bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible true
$bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) value $(24_hour)

$execute if score $24_hour huds.calendar matches 6..17 run bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color yellow
$execute unless score $24_hour huds.calendar matches 6..17 run bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color blue

$execute if predicate eden:weather/clear run bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) name [\
{"bold":false,"color":"#FFE6B5","italic":false,"text":"$(24_hour):$(minute)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#FFE6B5","italic":false,"text":"$(month_name) $(day), $(year)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#FFE6B5","italic":false,"text":"Clear"}\
]

$execute if predicate eden:weather/rain run bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) name [\
{"bold":false,"color":"#FFE6B5","italic":false,"text":"$(24_hour):$(minute)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#FFE6B5","italic":false,"text":"$(month_name) $(day), $(year)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#FFE6B5","italic":false,"text":"Raining"}\
]

$execute if predicate eden:weather/thunder run bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) name [\
{"bold":false,"color":"#FFE6B5","italic":false,"text":"$(24_hour):$(minute)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#FFE6B5","italic":false,"text":"$(month_name) $(day), $(year)"},\
{"bold":false,"color":"dark_gray","italic":false,"text":" | ","underlined":false},\
{"bold":false,"color":"#FFE6B5","italic":false,"text":"Storming"}\
]

data remove storage eden:temp huds