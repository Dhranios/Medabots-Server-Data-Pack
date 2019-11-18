execute positioned -1972 45 -551 run function medabots_server:set_blocks/action_floor/round_stone/east/power_0
execute positioned -1961 45 -562 run function medabots_server:set_blocks/action_floor/round_stone/south/power_0
execute positioned -1951 45 -552 run function medabots_server:set_blocks/action_floor/round_stone/west/power_0
execute positioned -1962 45 -541 run function medabots_server:set_blocks/action_floor/round_stone/north/power_0
execute positioned -1955 45 -558 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1955 45 -545 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1968 45 -545 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1968 45 -558 run function medabots_server:set_blocks/action_floor/bomb/delay_5/power_0
execute positioned -1950 45 -561 run function medabots_server:set_blocks/wall
execute positioned -1951 45 -562 run function medabots_server:set_blocks/wall
execute positioned -1952 45 -563 run function medabots_server:set_blocks/wall
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=-1] -1967 45 -552 -90 0
teleport @a[x=-1973,y=51,z=-589,dx=50,dy=4,dz=50,tag=0] -1956 45 -551 90 0
teleport @s[tag=-1] -1967 45 -552 -90 0
tag @a[x=-1967,y=45,z=-552,distance=..1] remove -1
tag @a[x=-1956,y=45,z=-551,distance=..1] remove 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Stage 50
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] Battle 1
execute as @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50] MusicType 0