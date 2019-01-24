execute if entity @s[tag=!ally_team,tag=!enemy_team] run scoreboard players set @e[distance=..3,scores={Battle=1},tag=tank] LegsArmor 0
execute if entity @s[tag=ally_team] run scoreboard players set @e[distance=..3,scores={Battle=1},tag=tank,tag=!ally_medabot] LegsArmor 0
execute if entity @s[tag=enemy_team] run scoreboard players set @e[distance=..3,scores={Battle=1},tag=tank,tag=!enemy_medabot] LegsArmor 0
summon minecraft:creeper ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.anti_tank\"}",Tags:["anti_tank"],ExplosionRadius:2b,Fuse:0s}
execute as @a[scores={Death=1..}] at @s if entity @e[distance=..3,tag=detected,tag=anti_tank] run tellraw @a {"translate":"medabots_server:death.anti_tank","with":[{"selector":"@s"}]}
execute as @a[scores={Death=1..}] at @s if entity @e[distance=..3,tag=detected,tag=anti_tank] run tag @s add had_death
kill @s