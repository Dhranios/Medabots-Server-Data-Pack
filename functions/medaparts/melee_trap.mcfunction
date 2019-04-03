# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=2,MeleeTrap=1}] Time 10
scoreboard players set @s[scores={Time=2,MeleeTrap=3}] Time 20

# Show particles
execute if entity @s[scores={Time=20}] run particle minecraft:dripping_water ~ ~1 ~ 1 0 1 1 10

# Set the trap
execute if entity @s[scores={Time=20},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap"],Duration:1200}
execute if entity @s[scores={Time=20},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","ally_team"],Duration:1200}
execute if entity @s[scores={Time=20},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.melee_trap"}',Tags:["melee_trap","trap","enemy_team"],Duration:1200}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={MeleeTrap=2,Time=22}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=30..}] MeleeTrap
scoreboard players set @s[scores={Time=30..}] Time 1