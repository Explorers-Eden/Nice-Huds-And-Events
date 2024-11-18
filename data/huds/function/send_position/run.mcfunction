execute as @a[scores={send_position=1..}] run function huds:send_position/get_data


schedule function huds:send_position/run 1s