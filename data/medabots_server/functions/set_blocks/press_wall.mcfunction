execute store result score @e[distance=..0.7,tag=press_wall,limit=1] PressWallNr run data get storage medabots_server:data unique_id.press_wall
execute store result storage medabots_server:data unique_id.press_wall int 1 run scoreboard players add @e[distance=..0.7,tag=press_wall,limit=1] PressWallNr 1
scoreboard players operation @e[distance=..0.7,tag=press_wall,tag=second_half] PressWallNr = @e[distance=..0.7,tag=press_wall,tag=!second_half] PressWallNr
scoreboard players set @e[distance=..0.7,tag=press_wall] Time 0
scoreboard players set @e[distance=..0.7,tag=press_wall] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=press_wall] PowerAmount 0