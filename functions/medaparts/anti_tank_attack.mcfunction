# Cooldown before detecting
scoreboard players add @s detectTime 1
execute if entity @e[tag=hostile,distance=..3] run scoreboard players set @s[scores={detectTime=30..},tag=hostile,tag=!ally_team,tag=!enemy_team] Detect 1
execute if entity @e[tag=hostile,distance=..3,tag=!ally_medabot] run scoreboard players set @s[scores={detectTime=30..},tag=hostile,tag=ally_team] Detect 1
execute if entity @e[tag=hostile,distance=..3,tag=!enemy_medabot] run scoreboard players set @s[scores={detectTime=30..},tag=hostile,tag=enemy_team] Detect 1

# Explode and destroy tank legs
execute if entity @s[scores={Detect=1},tag=!ally_team,tag=!enemy_team] run scoreboard players set @e[distance=..3,scores={Battle=1},tag=tank] LegsArmor 0
execute if entity @s[scores={Detect=1},tag=ally_team] run scoreboard players set @e[distance=..3,scores={Battle=1},tag=tank,tag=!ally_medabot] LegsArmor 0
execute if entity @s[scores={Detect=1},tag=enemy_team] run scoreboard players set @e[distance=..3,scores={Battle=1},tag=tank,tag=!enemy_medabot] LegsArmor 0
execute if entity @s[scores={Detect=1}] run summon minecraft:creeper ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.anti_tank\"}",Tags:["anti_tank"],ExplosionRadius:2b,Fuse:0s}
execute as @a[scores={Death=1..}] at @s if entity @e[distance=..3,scores={Detect=1},tag=anti_tank] run tellraw @a {"translate":"medabots_server:death.anti_tank","with":[{"selector":"@s"}]}
kill @s[scores={Detect=1}]