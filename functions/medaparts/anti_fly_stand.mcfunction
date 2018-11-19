# destroy fly legs if in the ground or near a player
tag @s[tag=anti_fly] remove in_ground
execute if entity @s[tag=anti_fly] positioned ~ ~1 ~ at @e[type=!minecraft:arrow,tag=!anti_fly,distance=..2] run tag @s add in_ground
execute if entity @s[tag=anti_fly] at @e[type=!minecraft:arrow,tag=!anti_fly,distance=..2] run tag @s add in_ground
execute if entity @s[tag=anti_fly,tag=in_ground] run scoreboard players set @a[distance=..3,scores={Fly=1..}] LegsDamage 10