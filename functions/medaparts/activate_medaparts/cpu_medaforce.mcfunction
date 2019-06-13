# Activate charged medaforce
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=kuwagata_medal] Medaforce -2
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=kabuto_medal] Medaforce -3
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=mermaid_medal] Medaforce -4
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=ghost_medal] Medaforce -5
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=monkey_medal] Medaforce -6
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=spidar_medal] Medaforce -7
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=question_medal] Medaforce -8
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=chameleon_medal] Medaforce -9
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=knight_medal] Medaforce -10
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=unicorn_medal] Medaforce -11
scoreboard players set @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=devil_medal] Medaforce -12
tag @s[scores={Medaforce=-1},tag=!medaforce_blocked,tag=alien_medal,tag=!random_change] add random_change

# Randomize alien medaforce
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","2"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","3"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","4"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","5"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","6"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","7"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","8"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","9"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","10"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","11"],Duration:1}
execute if entity @s[tag=random_change] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Random Medaforce"}',Tags:["random_medaforce","12"],Duration:1}
execute if entity @s[tag=random_change] run scoreboard players set @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_medaforce] Medaforce 1
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=2] run scoreboard players set @s Medaforce -2
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=3] run scoreboard players set @s Medaforce -3
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=4] run scoreboard players set @s Medaforce -4
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=5] run scoreboard players set @s Medaforce -5
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=6] run scoreboard players set @s Medaforce -6
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=7] run scoreboard players set @s Medaforce -7
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=8] run scoreboard players set @s Medaforce -8
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=9] run scoreboard players set @s Medaforce -9
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=10] run scoreboard players set @s Medaforce -10
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=11] run scoreboard players set @s Medaforce -11
execute at @e[type=minecraft:area_effect_cloud,scores={Medaforce=1},tag=12] run scoreboard players set @s Medaforce -12
execute if entity @s[tag=random_change] run kill @e[type=minecraft:area_effect_cloud,tag=random_medaforce]