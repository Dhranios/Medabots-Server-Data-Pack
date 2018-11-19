execute if block -1879 45 -562 minecraft:iron_door[open=true] if block -1876 45 -571 minecraft:iron_door[open=false] if entity @s[x=-1880,y=44,z=-561,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/0
execute if block -1879 45 -562 minecraft:iron_door[open=true] positioned -1871 44 -555 run function medabots_server:stage/wait_for_robattle_preventation
execute if entity @e[x=-1871.5,y=44,z=-553.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] store result score @s BattlingMedabots if entity @e[x=-1880,y=42,z=-562,dx=15,dy=7,dz=15,scores={Stage=79,Medabot=0..}]
execute if entity @e[x=-1871.5,y=44,z=-553.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if block -1879 45 -562 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1879 44 -562 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1879 44 -562 minecraft:structure_block as @s[scores={BattlingMedabots=1}] run setblock -1879 44 -562 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1879 44 -562 minecraft:structure_block run setblock -1879 45 -562 minecraft:redstone_block
execute if block -1876 45 -571 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1876 44 -571 minecraft:structure_block run setblock -1876 45 -571 minecraft:redstone_block
execute as @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=minecraft:area_effect_cloud,tag=mission]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1876 45 -571 minecraft:iron_door[open=true] if block -1899 45 -561 minecraft:iron_door[open=false] if entity @s[x=-1876,y=44,z=-572,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/1
execute if block -1876 45 -571 minecraft:iron_door[open=true] positioned -1916 44 -572 run function medabots_server:stage/wait_for_robattle_preventation
execute if entity @e[x=-1862.5,y=44,z=-571.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] store result score @s BattlingMedabots if entity @e[x=-1876,y=42,z=-579,dx=15,dy=7,dz=15,scores={Stage=79,Medabot=0..}]
execute if entity @e[x=-1862.5,y=44,z=-571.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if block -1876 45 -571 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1876 44 -571 minecraft:structure_block as @s[scores={BattlingMedabots=1}] run setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1876 44 -571 minecraft:structure_block run setblock -1876 45 -571 minecraft:redstone_block
execute if block -1880 45 -582 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1880 44 -582 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1880 44 -582 minecraft:structure_block run setblock -1880 45 -582 minecraft:redstone_block
execute as @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=minecraft:area_effect_cloud,tag=mission]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1880 45 -582 minecraft:iron_door[open=true] if block -1890 45 -558 minecraft:iron_door[open=false] if entity @s[x=-1879,y=44,z=-584,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/2
execute if block -1880 45 -582 minecraft:iron_door[open=true] positioned -1873 43 -590 run function medabots_server:stage/wait_for_robattle_preventation
execute if entity @e[x=-1871.5,y=44,z=-588.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] store result score @s BattlingMedabots if entity @e[x=-1880,y=42,z=-596,dx=15,dy=7,dz=15,scores={Stage=79,Medabot=0..}]
execute if entity @e[x=-1871.5,y=44,z=-588.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if block -1880 45 -582 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1880 44 -582 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1880 44 -582 minecraft:structure_block as @s[scores={BattlingMedabots=1}] run setblock -1880 44 -582 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1880 44 -582 minecraft:structure_block run setblock -1880 45 -582 minecraft:redstone_block
execute if block -1889 45 -585 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1889 44 -585 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1889 44 -585 minecraft:structure_block run setblock -1889 45 -585 minecraft:redstone_block
execute as @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=minecraft:area_effect_cloud,tag=mission]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1889 45 -585 minecraft:iron_door[open=true] if block -1879 45 -562 minecraft:iron_door[open=false] if entity @s[x=-1890,y=44,z=-588,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/3
execute if block -1889 45 -585 minecraft:iron_door[open=true] positioned -1890 44 -596 run function medabots_server:stage/wait_for_robattle_preventation
execute if entity @e[x=-1888.5,y=44,z=-594.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] store result score @s BattlingMedabots if entity @e[x=-1897,y=42,z=-603,dx=15,dy=7,dz=15,scores={Stage=79,Medabot=0..}]
execute if entity @e[x=-1888.5,y=44,z=-594.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if block -1889 45 -585 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1889 44 -585 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1889 44 -585 minecraft:structure_block as @s[scores={BattlingMedabots=1}] run setblock -1889 44 -585 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1889 44 -585 minecraft:structure_block run setblock -1889 45 -585 minecraft:redstone_block
execute if block -1900 45 -581 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1900 44 -581 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1900 44 -581 minecraft:structure_block run setblock -1900 45 -581 minecraft:redstone_block
execute as @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=minecraft:area_effect_cloud,tag=mission]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1900 45 -581 minecraft:iron_door[open=true] if block -1876 45 -571 minecraft:iron_door[open=false] if entity @s[x=-1902,y=44,z=-585,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/4
execute if block -1900 45 -581 minecraft:iron_door[open=true] positioned -1908 44 -588 run function medabots_server:stage/wait_for_robattle_preventation
execute if entity @e[x=-1906.5,y=44,z=-588.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] store result score @s BattlingMedabots if entity @e[x=-1880,y=42,z=-562,dx=15,dy=7,dz=15,scores={Stage=79,Medabot=0..}]
execute if entity @e[x=-1906.5,y=44,z=-588.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if block -1900 45 -581 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1900 44 -581 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1900 44 -581 minecraft:structure_block as @s[scores={BattlingMedabots=1}] run setblock -1900 44 -581 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1900 44 -581 minecraft:structure_block run setblock -1900 45 -581 minecraft:redstone_block
execute if block -1903 45 -572 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1903 44 -572 minecraft:structure_block run setblock -1903 45 -572 minecraft:redstone_block
execute as @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=minecraft:area_effect_cloud,tag=mission]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1903 45 -572 minecraft:iron_door[open=true] if block -1880 45 -582 minecraft:iron_door[open=false] if entity @s[x=-1906,y=44,z=-574,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/5
execute if block -1903 45 -572 minecraft:iron_door[open=true] positioned -1917 44 -572 run function medabots_server:stage/wait_for_robattle_preventation
execute if entity @e[x=-1915.5,y=44,z=-570.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] store result score @s BattlingMedabots if entity @e[x=-1920,y=42,z=-579,dx=15,dy=7,dz=15,scores={Stage=79,Medabot=0..}]
execute if entity @e[x=-1915.5,y=44,z=-570.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if block -1903 45 -572 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1903 44 -572 minecraft:structure_block as @s[scores={BattlingMedabots=1}] run setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1903 44 -572 minecraft:structure_block run setblock -1903 45 -572 minecraft:redstone_block
execute if block -1899 45 -561 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1899 44 -561 minecraft:structure_block run setblock -1899 45 -561 minecraft:redstone_block
execute as @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=minecraft:area_effect_cloud,tag=mission]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1899 45 -561 minecraft:iron_door[open=true] if block -1891 45 -558 minecraft:iron_door[open=true] if entity @s[x=-1903,y=44,z=-562,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/6
execute if block -1899 45 -561 minecraft:iron_door[open=true] positioned -1906 43 -553 run function medabots_server:stage/wait_for_robattle_preventation
execute if entity @e[x=-1906.5,y=44,z=-553.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] store result score @s BattlingMedabots if entity @e[x=-1914,y=42,z=-562,dx=15,dy=7,dz=15,scores={Stage=79,Medabot=0..}]
execute if entity @e[x=-1906.5,y=44,z=-553.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if block -1899 45 -561 minecraft:iron_door[open=false] as @s[scores={BattlingMedabots=1}] run setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1899 44 -561 minecraft:structure_block as @s[scores={BattlingMedabots=1}] run setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if block -1899 44 -561 minecraft:structure_block run setblock -1899 45 -561 minecraft:redstone_block
execute if block -1891 45 -558 minecraft:iron_door[open=true] as @s[scores={BattlingMedabots=1}] run setblock -1891 44 -558 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if block -1891 44 -558 minecraft:structure_block run setblock -1891 45 -558 minecraft:redstone_block
execute as @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=minecraft:area_effect_cloud,tag=mission]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1899 45 -561 minecraft:iron_door[open=true] if block -1891 45 -558 minecraft:iron_door[open=false] if entity @s[x=-1899,y=44,z=-562,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/7
execute if block -1891 45 -558 minecraft:iron_door[open=false] positioned -1889 44 -574 run function medabots_server:stage/wait_for_robattle_preventation
execute if block -1899 45 -561 minecraft:iron_door[open=false] positioned -1889 44 -574 run function medabots_server:stage/wait_for_robattle_preventation
execute if block -1891 44 -558 minecraft:structure_block run setblock -1891 45 -558 minecraft:redstone_block
execute if entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Stage=79,Medabot=0..}]
execute as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=79}] run scoreboard players set @s Stage 79
execute unless entity @s[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Battle=1..}] run function medabots_server:stage/clean_up/boxer/first_go
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/boxer/first_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1890 50 -571 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 22
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:wave_1/true_medafighter boxer_first_go
teleport @s[scores={BattlingMedabots=1}] -1890 50 -571 -180 0