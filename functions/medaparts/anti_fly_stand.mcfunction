# destroy fly legs if in the ground or near a player
tag @s remove in_ground
execute if entity @s[tag=!ally_team,tag=!enemy_team] positioned ~ ~1 ~ at @e[type=!minecraft:arrow,tag=!anti_fly,distance=..3,tag=hostile] run tag @s add in_ground
execute if entity @s[tag=!ally_team,tag=!enemy_team] at @e[type=!minecraft:arrow,tag=!anti_fly,distance=..3,tag=hostile] run tag @s add in_ground
execute if entity @s[tag=ally_team] positioned ~ ~1 ~ at @e[type=!minecraft:arrow,tag=!anti_fly,distance=..3,tag=hostile,tag=!ally_medabot] run tag @s add in_ground
execute if entity @s[tag=ally_team] at @e[type=!minecraft:arrow,tag=!anti_fly,distance=..3,tag=hostile,tag=!ally_medabot] run tag @s add in_ground
execute if entity @s[tag=enemy_team] positioned ~ ~1 ~ at @e[type=!minecraft:arrow,tag=!anti_fly,distance=..3,tag=hostile,tag=!enemy_medabot] run tag @s add in_ground
execute if entity @s[tag=enemy_team] at @e[type=!minecraft:arrow,tag=!anti_fly,distance=..3,tag=hostile,tag=!enemy_medabot] run tag @s add in_ground

execute if entity @s[tag=in_ground,tag=!ally_team,tag=!enemy_team] run scoreboard players set @e[distance=..3,scores={Fly=1..},tag=hostile] LegsArmor 0
execute if entity @s[tag=in_ground,tag=ally_team] run scoreboard players set @a[distance=..3,scores={Fly=1..},tag=hostile,tag=!ally_medabot] LegsArmor 0
execute if entity @s[tag=in_ground,tag=enemy_team] run scoreboard players set @a[distance=..3,scores={Fly=1..},tag=hostile,tag=!enemy_medabot] LegsArmor 0