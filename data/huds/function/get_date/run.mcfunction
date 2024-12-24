scoreboard players enable @a get_date
execute as @a[scores={get_date=1..}] run function huds:get_date/send_msg with storage eden:calendar global

schedule function huds:get_date/run 1s