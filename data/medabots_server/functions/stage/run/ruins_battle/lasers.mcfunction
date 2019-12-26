execute if entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=49},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=49},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=49},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute if block -1999 44 -566 minecraft:light_blue_wool run scoreboard players set @e[x=-1998.5,y=45,z=-578.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1999 44 -566 minecraft:blue_wool run scoreboard players set @e[x=-1998.5,y=45,z=-578.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1994 44 -566 minecraft:light_blue_wool run scoreboard players set @e[x=-1993.5,y=45,z=-578.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1994 44 -566 minecraft:blue_wool run scoreboard players set @e[x=-1993.5,y=45,z=-578.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1991 44 -563 minecraft:light_blue_wool run scoreboard players set @e[x=-1977.5,y=45,z=-562.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1991 44 -563 minecraft:blue_wool run scoreboard players set @e[x=-1977.5,y=45,z=-562.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1991 44 -558 minecraft:light_blue_wool run scoreboard players set @e[x=-1977.5,y=45,z=-557.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1991 44 -558 minecraft:blue_wool run scoreboard players set @e[x=-1977.5,y=45,z=-557.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1994 44 -555 minecraft:light_blue_wool run scoreboard players set @e[x=-1993.5,y=45,z=-541.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1994 44 -555 minecraft:blue_wool run scoreboard players set @e[x=-1993.5,y=45,z=-541.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1999 44 -555 minecraft:light_blue_wool run scoreboard players set @e[x=-1998.5,y=45,z=-541.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1999 44 -555 minecraft:blue_wool run scoreboard players set @e[x=-1998.5,y=45,z=-541.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -2002 44 -558 minecraft:light_blue_wool run scoreboard players set @e[x=-2014.5,y=45,z=-557.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -2002 44 -558 minecraft:blue_wool run scoreboard players set @e[x=-2014.5,y=45,z=-557.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -2002 44 -563 minecraft:light_blue_wool run scoreboard players set @e[x=-2014.5,y=45,z=-562.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -2002 44 -563 minecraft:blue_wool run scoreboard players set @e[x=-2002.5,y=45,z=-568.5,distance=..0.7,tag=laser_trap,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute as @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 49
execute as @e[scores={Stage=49},tag=practice_battle] run tag @e[scores={Stage=49},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/ruins_battle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1997 51 -560 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots