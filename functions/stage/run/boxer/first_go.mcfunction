execute unless entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=29},tag=enemy_medabot] run bossbar set medabots_server:boxer/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=29},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute unless entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=29},tag=enemy_medabot] store result bossbar medabots_server:boxer/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=29},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:boxer/robattle value
execute if entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=29},tag=enemy_medabot] store result bossbar medabots_server:boxer/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=29},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,scores={Medabot=0..,Battle=1..2,Stage=29},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/boxer/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/boxer/first_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1879 44 -562 minecraft:iron_door[open=true] if block -1876 44 -571 minecraft:iron_door[open=false] if entity @s[x=-1880,y=44,z=-561,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/0
execute if entity @e[x=-1871.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1878.5,y=44,z=-561.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1875.5,y=44,z=-570.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1876 44 -571 minecraft:iron_door[open=true] if block -1899 44 -561 minecraft:iron_door[open=false] if entity @s[x=-1876,y=44,z=-572,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/1
execute if entity @e[x=-1862.5,y=44,z=-571.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1875.5,y=44,z=-570.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1879.5,y=44,z=-581.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1880 44 -582 minecraft:iron_door[open=true] if block -1890 44 -558 minecraft:iron_door[open=false] if entity @s[x=-1879,y=44,z=-584,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/2
execute if entity @e[x=-1871.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1879.5,y=44,z=-581.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1888.5,y=44,z=-584.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1889 44 -585 minecraft:iron_door[open=true] if block -1879 44 -562 minecraft:iron_door[open=false] if entity @s[x=-1890,y=44,z=-588,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/3
execute if entity @e[x=-1888.5,y=44,z=-594.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1888.5,y=44,z=-584.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1899.5,y=44,z=-580.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1900 44 -581 minecraft:iron_door[open=true] if block -1876 44 -571 minecraft:iron_door[open=false] if entity @s[x=-1902,y=44,z=-585,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/4
execute if entity @e[x=-1906.5,y=44,z=-588.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1899.5,y=44,z=-580.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1902.5,y=44,z=-571.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1903 44 -572 minecraft:iron_door[open=true] if block -1880 44 -582 minecraft:iron_door[open=false] if entity @s[x=-1906,y=44,z=-574,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/5
execute if entity @e[x=-1915.5,y=44,z=-570.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1902.5,y=44,z=-571.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1898.5,y=44,z=-560.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1899 44 -561 minecraft:iron_door[open=true] if block -1891 44 -558 minecraft:iron_door[open=true] if entity @s[x=-1903,y=44,z=-562,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/6
execute if entity @e[x=-1906.5,y=44,z=-553.5,distance=..0.7,tag=mission,scores={Time=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,Battle=1..2}]
title @s[scores={BattlingMedabots=1,Battle=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1898.5,y=44,z=-560.5,distance=..0.7,tag=door,tag=!open] add open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run tag @e[x=-1890.5,y=44,z=-557.5,distance=..0.7,tag=door,tag=open] remove open
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run kill @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mission]
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1899 44 -561 minecraft:iron_door[open=true] if block -1891 44 -558 minecraft:iron_door[open=false] unless entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mr_referee] if entity @s[x=-1899,y=44,z=-562,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/7
execute if entity @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,Battle=1..2}]
execute as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=29}] run scoreboard players set @s Stage 29
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/boxer/first_go
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1890 50 -571 1000
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 22
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/boxer_first_go
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1890 50 -571 -180 0
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots