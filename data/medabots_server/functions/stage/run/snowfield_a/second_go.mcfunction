execute store result score #temp Time run bossbar get medabots_server:snowfield_a/time value
execute store result bossbar medabots_server:snowfield_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if entity @e[x=74.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=69.5,y=53,z=34.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=74.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=69.5,y=53,z=34.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=74.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=77.5,y=53,z=40.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=74.5,y=53,z=29.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=77.5,y=53,z=40.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=19.5,y=53,z=20.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=36.5,y=53,z=22.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=41.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=25.5,y=53,z=11.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=16.5,y=53,z=17.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=55.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=56.5,y=53,z=44.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=55.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=56.5,y=53,z=44.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=55.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=56.5,y=53,z=44.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=55.5,y=53,z=44.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=56.5,y=53,z=44.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=51.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=50.5,y=53,z=21.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=51.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=50.5,y=53,z=21.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=5.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=11.5,y=53,z=36.5,distance=..0.7,tag=spring_wall,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=5.5,y=53,z=60.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=11.5,y=53,z=36.5,distance=..0.7,tag=spring_wall,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=19.5,y=53,z=20.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=36.5,y=53,z=22.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=41.5,y=53,z=15.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=25.5,y=53,z=11.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=7.5,y=53,z=5,dx=6,dy=1,dz=19,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute as @e[x=0,y=51,z=0,dx=105,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 5
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/snowfield_a
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/snowfield_a_second_go
execute if entity @s[tag=clear_stage] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[tag=clear_stage] positioned 48 59 31 run function medabots_server:stage/clear