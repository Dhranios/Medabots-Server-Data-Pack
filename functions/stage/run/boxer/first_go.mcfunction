execute if block -1879 45 -562 minecraft:iron_door[open=true] if block -1876 45 -571 minecraft:iron_door[open=false] if entity @s[x=-1880,y=44,z=-561,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/0
execute if entity @e[x=-1871.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[x=-1880,y=42,z=-562,dx=15,dy=7,dz=15,scores={Stage=29,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1871.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1871.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1879 45 -562 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1879 44 -562 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1871.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1876 45 -571 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:boxer/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:boxer/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1876 45 -571 minecraft:iron_door[open=true] if block -1899 45 -561 minecraft:iron_door[open=false] if entity @s[x=-1876,y=44,z=-572,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/1
execute if entity @e[x=-1862.5,y=44,z=-571.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[x=-1876,y=42,z=-579,dx=15,dy=7,dz=15,scores={Stage=29,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1862.5,y=44,z=-571.5,distance=..0.7,tag=mission,scores={Time=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1862.5,y=44,z=-571.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1876 45 -571 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1876 44 -571 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1862.5,y=44,z=-571.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1880 45 -582 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1880 44 -582 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:boxer/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:boxer/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1880 45 -582 minecraft:iron_door[open=true] if block -1890 45 -558 minecraft:iron_door[open=false] if entity @s[x=-1879,y=44,z=-584,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/2
execute if entity @e[x=-1871.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[x=-1880,y=42,z=-596,dx=15,dy=7,dz=15,scores={Stage=29,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1871.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1871.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1880 45 -582 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1880 44 -582 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1871.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1889 45 -585 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1889 44 -585 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:boxer/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:boxer/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1889 45 -585 minecraft:iron_door[open=true] if block -1879 45 -562 minecraft:iron_door[open=false] if entity @s[x=-1890,y=44,z=-588,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/3
execute if entity @e[x=-1888.5,y=44,z=-594.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[x=-1897,y=42,z=-603,dx=15,dy=7,dz=15,scores={Stage=29,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1888.5,y=44,z=-594.5,distance=..0.7,tag=mission,scores={Time=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1888.5,y=44,z=-594.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1889 45 -585 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1889 44 -585 minecraft:structure_block[mode=load]{name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1888.5,y=44,z=-594.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1900 45 -581 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1900 44 -581 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:boxer/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:boxer/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1900 45 -581 minecraft:iron_door[open=true] if block -1876 45 -571 minecraft:iron_door[open=false] if entity @s[x=-1902,y=44,z=-585,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/4
execute if entity @e[x=-1906.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[x=-1880,y=42,z=-562,dx=15,dy=7,dz=15,scores={Stage=29,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1906.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1906.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1900 45 -581 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1900 44 -581 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_180",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1906.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1903 45 -572 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:boxer/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:boxer/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1903 45 -572 minecraft:iron_door[open=true] if block -1880 45 -582 minecraft:iron_door[open=false] if entity @s[x=-1906,y=44,z=-574,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/5
execute if entity @e[x=-1915.5,y=44,z=-570.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[x=-1920,y=42,z=-579,dx=15,dy=7,dz=15,scores={Stage=29,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1915.5,y=44,z=-570.5,distance=..0.7,tag=mission,scores={Time=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1915.5,y=44,z=-570.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1903 45 -572 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1903 44 -572 minecraft:structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1915.5,y=44,z=-570.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1899 45 -561 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:boxer/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:boxer/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1899 45 -561 minecraft:iron_door[open=true] if block -1891 45 -558 minecraft:iron_door[open=true] if entity @s[x=-1903,y=44,z=-562,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/6
execute if entity @e[x=-1906.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[x=-1914,y=42,z=-562,dx=15,dy=7,dz=15,scores={Stage=29,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1906.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] run title @s[scores={BattlingMedabots=1}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1906.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1899 45 -561 minecraft:iron_door[open=false] if entity @s[scores={BattlingMedabots=1}] run setblock -1899 44 -561 minecraft:structure_block[mode=load]{rotation:"CLOCKWISE_90",name:"medabots_server:stage/open_door",mode:"LOAD"}
execute if entity @e[x=-1906.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] if block -1891 45 -558 minecraft:iron_door[open=true] if entity @s[scores={BattlingMedabots=1}] run setblock -1891 44 -558 minecraft:structure_block[mode=load]{name:"medabots_server:stage/door",mode:"LOAD"}
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:boxer/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:boxer/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1899 45 -561 minecraft:iron_door[open=true] if block -1891 45 -558 minecraft:iron_door[open=false] if entity @s[x=-1899,y=44,z=-562,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/7
execute if entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mr_referee] store result score @s BattlingMedabots if entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Stage=29,Medabot=0..,Battle=1..}]
execute as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=29}] run scoreboard players set @s Stage 29
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/boxer/first_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1890 50 -571 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 22
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/wave_1/boxer_first_go
teleport @s[scores={BattlingMedabots=1}] -1890 50 -571 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:boxer/time players
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] store result bossbar medabots_server:boxer/time value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={BattlingMedabots=2..,Battle=1}] run scoreboard players reset #temp Time
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1879 44 -562 minecraft:structure_block run setblock -1879 45 -562 minecraft:redstone_block
execute if block -1876 44 -571 minecraft:structure_block run setblock -1876 45 -571 minecraft:redstone_block
execute if block -1880 44 -582 minecraft:structure_block run setblock -1880 45 -582 minecraft:redstone_block
execute if block -1889 44 -585 minecraft:structure_block run setblock -1889 45 -585 minecraft:redstone_block
execute if block -1900 44 -581 minecraft:structure_block run setblock -1900 45 -581 minecraft:redstone_block
execute if block -1903 44 -572 minecraft:structure_block run setblock -1903 45 -572 minecraft:redstone_block
execute if block -1899 44 -561 minecraft:structure_block run setblock -1899 45 -561 minecraft:redstone_block
execute if block -1891 44 -558 minecraft:structure_block run setblock -1891 45 -558 minecraft:redstone_block