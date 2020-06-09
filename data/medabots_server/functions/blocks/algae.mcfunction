# Prevent the blocks from disappearing (due to random ticking)
execute positioned ~-0.5 ~ ~-0.5 as @e[dx=0,dy=1,dz=0,tag=hostile,tag=swim_legs] positioned ~0.5 ~ ~0.5 facing entity @s feet positioned as @s rotated ~ 0 run teleport @s ^ ^ ^0.2
execute positioned ~-0.5 ~-1 ~-0.5 as @e[dx=0,dy=2,dz=0,tag=hostile,tag=!swim_legs] unless entity @s[tag=fly_legs,scores={LegsArmor=1..}] unless entity @s[tag=float_legs,scores={LegsArmor=1..}] at @s if block ~0.3 ~-0.2 ~0.3 #medabots_server:water if block ~-0.3 ~-0.2 ~0.3 #medabots_server:water if block ~0.3 ~-0.2 ~-0.3 #medabots_server:water if block ~-0.3 ~-0.2 ~-0.3 #medabots_server:water run teleport @s ~ ~-0.2 ~

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run setblock ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-2 ~ ~ ~-1 ~ minecraft:water
kill @s[tag=dead]