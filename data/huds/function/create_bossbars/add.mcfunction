$bossbar add eden:compass_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) "Compass Hud"
$bossbar set eden:compass_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) players @s
$bossbar set eden:compass_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible false
$bossbar set eden:compass_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color white

$bossbar add eden:recovery_compass_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) "No Death Location Yet"
$bossbar set eden:recovery_compass_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) players @s
$bossbar set eden:recovery_compass_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible false
$bossbar set eden:recovery_compass_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color white

$bossbar add eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) "Clock Hud"
$bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) players @s
$bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) visible false
$bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) color white
$bossbar set eden:clock_hud_$(uuid_0)$(uuid_1)$(uuid_2)$(uuid_3) max 24

data remove storage eden:temp huds