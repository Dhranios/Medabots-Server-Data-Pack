# Cooldown before detecting
scoreboard players add @s detectTime 1
execute at @e[tag=hostile,distance=..3] run scoreboard players set @s[scores={detectTime=30..}] Detect 1

# Explode and destroy tank legs
execute if entity @s[scores={Detect=1}] run scoreboard players set @a[distance=..3,scores={Battle=1},tag=tank] LegsHP 0
execute if entity @s[scores={Detect=1}] as @e[distance=..3,tag=hostile] run summon minecraft:creeper ~ ~ ~ {CustomName:"{\"translate\":\"medabots_server:move.anti_tank\"}",Tags:["anti_tank"],ExplosionRadius:2b,Fuse:0s}
execute as @a[scores={Death=1..}] at @s if entity @e[distance=..3,scores={Detect=1},tag=anti_tank] run tellraw @a {"translate":"medabots_server:death.anti_tank","with":[{"selector":"@s"}]}
kill @s[scores={Detect=1}]