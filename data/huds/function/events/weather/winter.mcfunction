execute store result score $weather eden.technical run random value 1..100

execute if score $weather eden.technical matches 1..50 run weather rain 1d
execute if score $weather eden.technical matches 51..95 run weather clear 1d
execute if score $weather eden.technical matches 96..100 run weather thunder 1d