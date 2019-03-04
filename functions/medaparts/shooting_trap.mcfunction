# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,ShootingTrap=1}] Time 19
scoreboard players set @s[scores={Time=3,ShootingTrap=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:dripping_lava ~ ~1 ~ 1 0 1 1 10

# Set the trap
execute if entity @s[scores={Time=32},tag=!ally_medabot,tag=!enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap"],Duration:1200}
execute if entity @s[scores={Time=32},tag=ally_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","ally_team"],Duration:1200}
execute if entity @s[scores={Time=32},tag=enemy_medabot] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:medabots_server:move.shooting_trap"}',Tags:["shooting_trap","trap","enemy_team"],Duration:1200}

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={ShootingTrap=2,Time=32}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=34..}] ShootingTrap
scoreboard players set @s[scores={Time=34..}] Time 1