execute unless entity @e[scores={Stage=53},tag=hide_normal_time] run bossbar set medabots_server:rock_e/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=53},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_e/time value
execute unless entity @e[scores={Stage=53},tag=hide_normal_time] store result bossbar medabots_server:rock_e/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=53},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_e/robattle value
execute if entity @e[scores={Stage=53},tag=hide_normal_time] if entity @e[scores={Stage=53,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:rock_e/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=53},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=53},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/rock_e
execute if entity @s[scores={State=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if block -1823 44 -322 minecraft:light_blue_wool run scoreboard players set @e[x=-1817.5,y=45,z=-320.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1823 44 -322 minecraft:blue_wool run scoreboard players set @e[x=-1817.5,y=45,z=-320.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1826 44 -317 minecraft:lime_wool if block -1905 44 -255 minecraft:lime_wool if block -1867 44 -343 minecraft:lime_wool if block -1849 44 -326 minecraft:light_blue_wool run scoreboard players set @e[x=-1831.5,y=45,z=-318.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1849 44 -326 minecraft:blue_wool run scoreboard players set @e[x=-1831.5,y=45,z=-318.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1873 44 -254 minecraft:lime_wool run scoreboard players set @e[x=-1876,y=45,z=-254,distance=..4,type=minecraft:area_effect_cloud,tag=press_wall,scores={PowerAmount=0}] PowerAmount 1
execute if block -1826 44 -317 minecraft:green_wool if block -1876 44 -254 minecraft:yellow_wool run scoreboard players set @e[x=-1829.5,y=45,z=-280.5,distance=..4,type=minecraft:area_effect_cloud,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block -1876 44 -254 minecraft:orange_wool run scoreboard players set @e[x=-1829.5,y=45,z=-280.5,distance=..4,type=minecraft:area_effect_cloud,tag=hammer_punch,scores={PowerAmount=1}] PowerAmount 0
execute if block -1826 44 -317 minecraft:lime_wool run scoreboard players set @e[x=-1829.5,y=45,z=-280.5,distance=..4,type=minecraft:area_effect_cloud,tag=hammer_punch,scores={PowerAmount=1}] PowerAmount 0
execute if block -1826 44 -317 minecraft:lime_wool run scoreboard players set @e[x=-1829.5,y=45,z=-294.5,distance=..4,type=minecraft:area_effect_cloud,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if block -1829 45 -266 minecraft:iron_trapdoor[open=true] if block -1825 45 -278 minecraft:barrier if entity @s[x=-1829,y=45,z=-267,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/0
execute if entity @e[x=-1820.5,y=45,z=-267.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute if entity @e[x=-1820.5,y=45,z=-267.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=53},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1828.5,y=45,z=-265.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1824.5,y=45,z=-277.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block -1820 45 -312 minecraft:iron_trapdoor[open=true] if block -1819 45 -314 minecraft:air if entity @s[x=-1821,y=45,z=-315,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/1
execute if entity @e[x=-1817.5,y=45,z=-313.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute if entity @e[x=-1817.5,y=45,z=-313.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if block -1826 44 -317 minecraft:lime_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1819.5,y=45,z=-311.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block -1840 45 -285 minecraft:iron_trapdoor[open=true] if block -1852 45 -295 minecraft:barrier if entity @s[x=-1843,y=45,z=-287,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/2
execute if entity @e[x=-1842.5,y=45,z=-287.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute if entity @e[x=-1842.5,y=45,z=-287.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=53},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1839.5,y=45,z=-284.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1851.5,y=45,z=-294.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block -1868 45 -273 minecraft:iron_trapdoor[open=true] if block -1874 45 -274 minecraft:barrier if entity @s[x=-1871,y=45,z=-275,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/3
execute if entity @e[x=-1871.5,y=45,z=-268.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1}] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1}] run scoreboard players set @e[x=-1867.5,y=45,z=-272.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1}] run scoreboard players set @e[x=-1873.5,y=45,z=-273.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:rock_e/robattle players
scoreboard players reset @s BattlingMedabots
execute if block -1885 45 -272 minecraft:iron_trapdoor[open=true] if block -1903 45 -272 minecraft:barrier if entity @s[x=-1888,y=45,z=-274,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/4
execute if entity @e[x=-1893.5,y=45,z=-265.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=-1893.5,y=45,z=-265.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=53}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1893.5,y=45,z=-265.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1893.5,y=45,z=-265.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1884.5,y=45,z=-271.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1893.5,y=45,z=-265.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1902.5,y=45,z=-271.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1893.5,y=45,z=-265.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:rock_e/robattle players
kill @e[x=-1893.5,y=45,z=-265.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1874 45 -302 minecraft:iron_trapdoor[open=true] if block -1873 45 -305 minecraft:barrier if entity @s[x=-1876,y=45,z=-302,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/5
execute if entity @e[x=-1874.5,y=45,z=-298.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute if entity @e[x=-1874.5,y=45,z=-298.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if block -1874 44 -291 minecraft:lime_wool if block -1875 44 -301 minecraft:light_blue_wool run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1873.5,y=45,z=-301.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1872.5,y=45,z=-304.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block -1854 45 -315 minecraft:iron_trapdoor[open=true] if block -1861 45 -317 minecraft:barrier if entity @s[x=-1854,y=45,z=-316,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/6
execute if entity @e[x=-1845.5,y=45,z=-310.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1}] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1}] run scoreboard players set @e[x=-1853.5,y=45,z=-314.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1}] run scoreboard players set @e[x=-1860.5,y=45,z=-316.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerNeeded=1}] PowerNeeded 0
execute if entity @s[scores={BattlingMedabots=1}] run kill @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:rock_e/robattle players
scoreboard players reset @s BattlingMedabots
execute if block -1861 45 -317 minecraft:iron_trapdoor[open=true] if block -1854 45 -334 minecraft:barrier if entity @s[x=-1862,y=45,z=-320,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/7
execute if entity @e[x=-1858.5,y=45,z=-319.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute if entity @e[x=-1858.5,y=45,z=-319.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=53},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1860.5,y=45,z=-316.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1853.5,y=45,z=-333.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block -1835 45 -335 minecraft:iron_trapdoor[open=true] if block -1864 45 -336 minecraft:barrier if entity @s[x=-1835,y=45,z=-336,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/8
execute if entity @e[x=-1832.5,y=45,z=-335.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute if entity @e[x=-1832.5,y=45,z=-335.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=53},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1834.5,y=45,z=-334.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1863.5,y=45,z=-335.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1832.5,y=45,z=-330.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=53,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=53,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s BattlingMedabots
execute if block -1875 45 -332 minecraft:iron_trapdoor[open=true] if entity @s[x=-1878,y=45,z=-334,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_e/dev_ultimategold_battle/9
execute if entity @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=53,Medabot=0..,State=1..2}]
execute as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 53
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/rock_e
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:developer_challenge/rock_e_ultimategold
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:rock_e/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/other={rock_e_ultimategold=true,rock_e_ultimategold_cleared=false}}] add dialog_rock_e_ultimategold_cleared
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1860 51 -298 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots