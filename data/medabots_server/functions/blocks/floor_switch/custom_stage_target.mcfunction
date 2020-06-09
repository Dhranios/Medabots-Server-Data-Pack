# Power position if powered
execute store result score @s PowerNeeded run data get storage medabots_server:bound_object Power
scoreboard players operation @e[distance=..0.7,tag=!me] PowerAmount += @s PowerNeeded

kill @s