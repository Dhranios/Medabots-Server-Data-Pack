# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,Destroy=1}] Time 19
scoreboard players set @s[scores={Time=3,Destroy=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:smoke ~ ~1 ~ 1 0 1 1 10

# Spawn the attack
execute if entity @s[scores={Time=48}] run summon minecraft:armor_stand ^ ^ ^1 {Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1b}],CustomName:"{\"translate\":\"medabots_server:move.destroy\"}",Tags:["destroy"]}
execute if entity @s[scores={Time=48}] at @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] rotated as @s run teleport @e[type=minecraft:armor_stand,tag=destroy,distance=..0.2] ~ ~ ~ ~ ~

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={Destroy=2,Time=48}] HeadUses 1

# Make the closest destroy move deal damage
execute if entity @s[scores={Time=48}] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=1.5] unless entity @s[scores={Time=48,Destroy=1..3}] run effect give @s[tag=undead] minecraft:instant_health 1 3 true
execute if entity @s[scores={Time=48}] at @e[sort=nearest,type=minecraft:armor_stand,tag=destroy,limit=1] positioned ^ ^ ^1 as @e[distance=1.5] unless entity @s[scores={Time=48,Destroy=1..3}] run effect give @s[tag=!undead] minecraft:instant_damage 1 3 true

# Finish move
scoreboard players reset @s[scores={Time=64..}] Destroy
scoreboard players set @s[scores={Time=64..}] Time 1

# Attacked my melee trap
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s[tag=!undead] minecraft:instant_damage 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run effect give @s[tag=undead] minecraft:instant_health 1 0 true
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] if entity @s[scores={Death=1..},type=minecraft:player] run tellraw @a {"translate":"medabots_server:death.melee_trap","with":[{"selector":"@s"}]}
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run tag @s[scores={Death=1..}] add had_death
execute at @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap] run playsound medabots_server:entity.medabot.attack.trap_hit player @a ~ ~ ~ 1
kill @e[distance=..3,type=minecraft:area_effect_cloud,tag=melee_trap]