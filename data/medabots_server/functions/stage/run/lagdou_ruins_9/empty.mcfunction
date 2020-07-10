execute if entity @e[x=0,y=49,z=0,dx=53,dy=7,dz=68,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=44},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=0,y=49,z=0,dx=53,dy=7,dz=68,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=44},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=0,y=49,z=0,dx=53,dy=7,dz=68,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=44},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=0,y=49,z=0,dx=53,dy=7,dz=68,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 44
execute as @e[scores={Stage=44},tag=practice_battle] run tag @e[scores={Stage=44},tag=medabot] add practice_robattle
execute as @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_9
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_9_second_go
advancement grant @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_9_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=44}] run function medabots_server:stage/get_score/time_damage_kills
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @a[scores={Stage=44}] positioned 26 58 35 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run fill 0 53 0 53 53 68 minecraft:air replace minecraft:fire
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","1"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","2"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","3"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","4"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","5"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","6"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","7"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","8"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","9"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","10"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","11"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","12"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","13"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","14"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","15"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","16"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","17"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","18"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","19"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","20"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","21"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","22"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","23"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","24"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","25"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","26"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","27"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","28"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","29"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","30"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","31"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","32"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","33"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","34"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","35"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","36"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","37"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","38"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","39"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","40"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","41"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","42"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","43"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","44"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","45"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","46"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","47"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","48"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","49"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","50"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","51"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","52"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","53"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","54"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","55"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","56"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","57"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","58"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","59"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","60"]}
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","61"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=fire_marker,limit=10] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=1,tag=selected] run fill 45 53 63 47 53 65 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=2,tag=selected] run fill 51 53 63 53 53 65 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=3,tag=selected] run fill 48 53 60 50 53 62 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=4,tag=selected] run fill 45 53 57 47 53 59 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=5,tag=selected] run fill 48 53 36 50 53 38 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=6,tag=selected] run fill 33 53 45 35 53 47 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=7,tag=selected] run fill 39 53 48 41 53 50 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=8,tag=selected] run fill 39 53 57 41 53 59 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=9,tag=selected] run fill 39 53 60 41 53 62 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=10,tag=selected] run fill 36 53 66 38 53 68 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=11,tag=selected] run fill 33 53 63 35 53 65 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=12,tag=selected] run fill 27 53 63 29 53 65 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=13,tag=selected] run fill 18 53 66 20 53 68 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=14,tag=selected] run fill 21 53 42 23 53 44 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=15,tag=selected] run fill 18 53 39 20 53 41 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=16,tag=selected] run fill 15 53 39 17 53 41 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=17,tag=selected] run fill 0 53 36 2 53 38 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=18,tag=selected] run fill 3 53 33 5 53 35 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=19,tag=selected] run fill 0 53 30 2 53 32 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=20,tag=selected] run fill 0 53 21 2 53 23 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=21,tag=selected] run fill 3 53 18 5 53 20 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=22,tag=selected] run fill 6 53 18 8 53 20 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=23,tag=selected] run fill 11 53 18 9 53 20 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=24,tag=selected] run fill 14 53 18 12 53 20 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=25,tag=selected] run fill 17 53 18 15 53 20 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=26,tag=selected] run fill 15 53 15 17 53 17 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=27,tag=selected] run fill 18 53 12 20 53 14 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=28,tag=selected] run fill 18 53 9 20 53 11 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=29,tag=selected] run fill 21 53 9 23 53 11 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=30,tag=selected] run fill 21 53 6 23 53 8 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=31,tag=selected] run fill 21 53 0 23 53 2 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=32,tag=selected] run fill 18 53 3 20 53 5 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=33,tag=selected] run fill 15 53 6 17 53 8 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=34,tag=selected] run fill 9 53 3 11 53 5 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=35,tag=selected] run fill 6 53 3 8 53 5 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=36,tag=selected] run fill 3 53 0 5 53 2 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=37,tag=selected] run fill 0 53 3 2 53 5 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=38,tag=selected] run fill 3 53 6 5 53 8 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=39,tag=selected] run fill 3 53 9 5 53 11 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=40,tag=selected] run fill 9 53 9 11 53 11 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=41,tag=selected] run fill 0 53 12 2 53 14 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=42,tag=selected] run fill 6 53 12 8 53 14 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=43,tag=selected] run fill 24 53 12 26 53 14 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=44,tag=selected] run fill 27 53 12 29 53 14 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=45,tag=selected] run fill 30 53 12 32 53 14 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=46,tag=selected] run fill 30 53 9 32 53 11 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=47,tag=selected] run fill 33 53 12 35 53 14 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=48,tag=selected] run fill 33 53 6 35 53 8 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=49,tag=selected] run fill 36 53 9 38 53 11 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=50,tag=selected] run fill 39 53 12 41 53 14 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=51,tag=selected] run fill 36 53 15 38 53 17 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=52,tag=selected] run fill 36 53 21 38 53 23 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=53,tag=selected] run fill 36 53 24 38 53 26 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=54,tag=selected] run fill 33 53 24 35 53 26 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=55,tag=selected] run fill 36 53 27 38 53 29 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=56,tag=selected] run fill 51 53 24 53 53 26 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=57,tag=selected] run fill 42 53 24 44 53 26 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=58,tag=selected] run fill 45 53 27 47 53 29 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=59,tag=selected] run fill 48 53 27 50 53 29 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=60,tag=selected] run fill 48 53 30 50 53 32 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=61,tag=selected] run fill 42 53 30 44 53 32 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
kill @e[type=minecraft:area_effect_cloud,tag=fire_marker]
execute unless entity @e[x=0,y=48,z=0,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_timer"],Duration:240}