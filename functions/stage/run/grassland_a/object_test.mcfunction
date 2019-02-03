execute if block -1515 45 -168 minecraft:chest run setblock -1515 46 -168 minecraft:barrier
execute if block -1515 45 -168 minecraft:air run setblock -1515 46 -168 minecraft:air
execute as @e[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=102}] run scoreboard players set @s Stage 102
execute unless entity @e[scores={Stage=102},tag=rubberobo] if entity @s[x=-1515.5,y=45,z=-173.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/grassland_a/object_test
execute unless entity @e[scores={Stage=102},tag=rubberobo] run stopsound @s[x=-1515.5,y=45,z=-173.5,distance=..0.7,tag=hostile,gamemode=adventure] music
execute unless entity @e[scores={Stage=102},tag=rubberobo] run playsound medabots_server:music.stage.stage_end music @s[x=-1515.5,y=45,z=-173.5,distance=..0.7,tag=hostile,gamemode=adventure] -1539 51 -151 14
execute unless entity @e[scores={Stage=102},tag=rubberobo] run scoreboard players set @s[x=-1515.5,y=45,z=-173.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
execute unless entity @e[scores={Stage=102},tag=rubberobo] run scoreboard players set @s[x=-1515.5,y=45,z=-173.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
execute unless entity @e[scores={Stage=102},tag=rubberobo] run scoreboard players set @s[x=-1515.5,y=45,z=-173.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
execute unless entity @e[scores={Stage=102},tag=rubberobo] run teleport @s[x=-1515.5,y=45,z=-173.5,distance=..0.7,tag=hostile,gamemode=adventure] -1539 51 -151 -180 0