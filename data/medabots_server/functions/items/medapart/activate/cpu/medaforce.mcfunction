# Activate charged medaforce
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=kuwagata_medal] Medaforce -2
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=kabuto_medal] Medaforce -3
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=mermaid_medal] Medaforce -4
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=ghost_medal] Medaforce -5
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=monkey_medal] Medaforce -6
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=spidar_medal] Medaforce -7
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=question_medal] Medaforce -8
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=chameleon_medal] Medaforce -9
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=knight_medal] Medaforce -10
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=unicorn_medal] Medaforce -11
scoreboard players set @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=devil_medal] Medaforce -12
tag @s[scores={Medaforce=2},tag=!blocked_medaforce,tag=alien_medal,tag=!random_change] add random_change

# Randomize alien medaforce
execute if entity @s[tag=random_change] run loot spawn ~ ~ ~ loot medabots_server:gameplay/random_change
execute if entity @s[tag=random_change] store result score @s Medaforce as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run data get entity @s Item.tag.Option
scoreboard players operation @s[tag=random_change] Medaforce *= #-1 Constants
execute if entity @s[tag=random_change] as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s