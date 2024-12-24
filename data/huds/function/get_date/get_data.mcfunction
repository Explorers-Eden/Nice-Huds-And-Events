data modify storage eden:temp huds.12_hour set from storage eden:calendar global.12_hour
data modify storage eden:temp huds.24_hour set from storage eden:calendar global.24_hour
data modify storage eden:temp huds.minute set from storage eden:calendar global.minute
data modify storage eden:temp huds.meridiem set from storage eden:calendar global.meridiem
data modify storage eden:temp huds.day set from storage eden:calendar global.day
data modify storage eden:temp huds.month_name set from storage eden:calendar global.month_name
data modify storage eden:temp huds.year set from storage eden:calendar global.year
data modify storage eden:temp huds.weekday set from storage eden:calendar global.weekday
data modify storage eden:temp huds.season set from storage eden:calendar global.season
data modify storage eden:temp huds.daypart set from storage eden:calendar global.daypart

function huds:get_date/send_msg with storage eden:temp huds

