scoreboard players operation @e[distance=..0.7,tag=press_wall,tag=!second_half] PressWallNr > @e[tag=press_wall,tag=!second_half] PressWallNr
scoreboard players add @e[distance=..0.7,tag=press_wall,tag=!second_half] PressWallNr 1
scoreboard players operation @e[distance=..0.7,tag=press_wall,tag=second_half] PressWallNr = @e[distance=..0.7,tag=press_wall,tag=!second_half] PressWallNr
scoreboard players set @e[distance=..0.7,tag=press_wall] Time 0
scoreboard players set @e[distance=..0.7,tag=press_wall] PowerNeeded 1
scoreboard players set @e[distance=..0.7,tag=press_wall] PowerAmount 0