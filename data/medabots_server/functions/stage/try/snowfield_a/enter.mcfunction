tag @s add unlock
execute if entity @a[scores={Gamemode=0,Stage=5},limit=1] run tag @s remove unlock
execute as @a[scores={Stage=5}] unless entity @s[scores={Gamemode=1..}] run tag @a[distance=..0.1,limit=1] remove unlock
tellraw @s[tag=!unlock,tag=!leave_stage] {"translate":"medabots_server:message.stage.already_playing","color":"green"}
execute if entity @s[tag=unlock] run function medabots_server:stage/clean_up/snowfield_a
tag @s remove unlock