execute if entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=50},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=50},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=50},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute if block -1943 44 -559 minecraft:yellow_wool run scoreboard players remove @e[x=-1955.5,y=45,z=-566.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1943 44 -559 minecraft:yellow_wool run tag @e[x=-1945.5,y=45,z=-545.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1943 44 -559 minecraft:yellow_wool run scoreboard players remove @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1943 44 -559 minecraft:yellow_wool run tag @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1943 44 -559 minecraft:yellow_wool run scoreboard players remove @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1943 44 -559 minecraft:yellow_wool run tag @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1943 44 -559 minecraft:yellow_wool run scoreboard players remove @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1943 44 -559 minecraft:yellow_wool run tag @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1928 44 -559 minecraft:yellow_wool run scoreboard players remove @e[x=-1945.5,y=45,z=-545.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1928 44 -559 minecraft:yellow_wool run tag @e[x=-1945.5,y=45,z=-545.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1928 44 -559 minecraft:yellow_wool run scoreboard players remove @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1928 44 -559 minecraft:yellow_wool run tag @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1928 44 -559 minecraft:yellow_wool run scoreboard players remove @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1928 44 -559 minecraft:yellow_wool run tag @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1928 44 -559 minecraft:yellow_wool run scoreboard players remove @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1928 44 -559 minecraft:yellow_wool run tag @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1928 44 -544 minecraft:yellow_wool run scoreboard players remove @e[x=-1945.5,y=45,z=-545.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1928 44 -544 minecraft:yellow_wool run tag @e[x=-1945.5,y=45,z=-545.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1928 44 -544 minecraft:yellow_wool run scoreboard players remove @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1928 44 -544 minecraft:yellow_wool run tag @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1928 44 -544 minecraft:yellow_wool run scoreboard players remove @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1928 44 -544 minecraft:yellow_wool run tag @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1928 44 -544 minecraft:yellow_wool run scoreboard players remove @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1928 44 -544 minecraft:yellow_wool run tag @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1943 44 -544 minecraft:yellow_wool run scoreboard players remove @e[x=-1945.5,y=45,z=-545.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1943 44 -544 minecraft:yellow_wool run tag @e[x=-1945.5,y=45,z=-545.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1943 44 -544 minecraft:yellow_wool run scoreboard players remove @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1943 44 -544 minecraft:yellow_wool run tag @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1943 44 -544 minecraft:yellow_wool run scoreboard players remove @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1943 44 -544 minecraft:yellow_wool run tag @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1943 44 -544 minecraft:yellow_wool run scoreboard players remove @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1943 44 -544 minecraft:yellow_wool run tag @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1943 44 -559 minecraft:orange_wool if block -1928 44 -559 minecraft:orange_wool if block -1928 44 -544 minecraft:orange_wool if block -1943 44 -544 minecraft:orange_wool run scoreboard players add @e[x=-1945.5,y=45,z=-545.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if block -1943 44 -559 minecraft:orange_wool if block -1928 44 -559 minecraft:orange_wool if block -1928 44 -544 minecraft:orange_wool if block -1943 44 -544 minecraft:orange_wool run tag @e[x=-1945.5,y=45,z=-545.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if block -1943 44 -559 minecraft:orange_wool if block -1928 44 -559 minecraft:orange_wool if block -1928 44 -544 minecraft:orange_wool if block -1943 44 -544 minecraft:orange_wool run scoreboard players add @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if block -1943 44 -559 minecraft:orange_wool if block -1928 44 -559 minecraft:orange_wool if block -1928 44 -544 minecraft:orange_wool if block -1943 44 -544 minecraft:orange_wool run tag @e[x=-1924.5,y=45,z=-556.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if block -1943 44 -559 minecraft:orange_wool if block -1928 44 -559 minecraft:orange_wool if block -1928 44 -544 minecraft:orange_wool if block -1943 44 -544 minecraft:orange_wool run scoreboard players add @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if block -1943 44 -559 minecraft:orange_wool if block -1928 44 -559 minecraft:orange_wool if block -1928 44 -544 minecraft:orange_wool if block -1943 44 -544 minecraft:orange_wool run tag @e[x=-1940.5,y=45,z=-561.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if block -1943 44 -559 minecraft:orange_wool if block -1928 44 -559 minecraft:orange_wool if block -1928 44 -544 minecraft:orange_wool if block -1943 44 -544 minecraft:orange_wool run scoreboard players add @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if block -1943 44 -559 minecraft:orange_wool if block -1928 44 -559 minecraft:orange_wool if block -1928 44 -544 minecraft:orange_wool if block -1943 44 -544 minecraft:orange_wool run tag @e[x=-1929.5,y=45,z=-540.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute as @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 50
execute as @e[scores={Stage=50},tag=practice_battle] run tag @e[scores={Stage=50},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/park_battle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=50}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=50}] positioned -1949 51 -564 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots