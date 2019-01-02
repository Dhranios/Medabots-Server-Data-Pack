# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,AntiTank=1}] Time 19
scoreboard players set @s[scores={Time=3,AntiTank=3}] Time 27

# Show particle
execute if entity @s[scores={Time=32}] run particle minecraft:dust 0.5 0.5 0.5 1 ~ ~ ~ 0 0 0 10

# Set the trap
execute if entity @s[scores={Time=32},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.anti_tank\"}",Tags:["anti_tank","trap"],Duration:1200}
execute if entity @s[scores={Time=32},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.anti_tank\"}",Tags:["anti_tank","trap","ally_team"],Duration:1200}
execute if entity @s[scores={Time=32},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.anti_tank\"}",Tags:["anti_tank","trap","enemy_team"],Duration:1200}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={AntiTank=2,Time=32}] HeadUses 1

# Finish move
scoreboard players reset @s[scores={Time=34..}] AntiTank
scoreboard players set @s[scores={Time=34..}] Time 1