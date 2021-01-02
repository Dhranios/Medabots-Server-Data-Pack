# Transfer power to position
execute store result score @s PowerAmount run data get storage medabots_server:data bound_object.power
scoreboard players operation @e[distance=..0.7] PowerAmount += @s PowerAmount