teleport @a[x=-1504,y=51,z=-210,dx=275,dy=4,dz=93,tag=-1] -1476 14 -176 -90 0
teleport @a[x=-1504,y=51,z=-210,dx=275,dy=4,dz=93,tag=0] -1387 19 -194 90 0
teleport @s[tag=-1] -1476 14 -176 -90 0
tag @a[x=-1476,y=14,z=-176,distance=..1] remove -1
tag @a[x=-1387,y=19,z=-194,distance=..1] remove 0
scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] Stage 46
scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] Battle 1
loot spawn -1443 16 -157 loot medabots_server:gameplay/random_chance/1_in_84
execute unless entity @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run playsound medabots_server:music.stage.pvp.rico_harbor_intro music @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] ~ ~ ~ 10000
execute unless entity @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] Music 40
execute unless entity @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] MusicType 24
execute if entity @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] Music 0
execute if entity @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run scoreboard players set @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] MusicType 25
execute if entity @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}] run advancement grant @a[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93] only medabots_server:easter_eggs/this_is_not_delfino_plaza
kill @e[x=-1442.5,y=16,z=-156.5,distance=..0.7,type=minecraft:item,nbt={Item:{tag:{Success:1b}}}]