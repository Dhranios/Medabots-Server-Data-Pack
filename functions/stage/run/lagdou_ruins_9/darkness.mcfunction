execute store result score @s BattlingMedabots if entity @e[scores={Stage=44,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1304 46 -261 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","no_overwrite"],Rotation:[-90.0f,0.0f]}
execute as @e[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68,type=!minecraft:player] unless entity @s[scores={Stage=44}] run scoreboard players set @s Stage 44
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/lagdou_ruins_9/darkness
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_9_second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_9_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_9_first_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1288 51 -256 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run fill -1314 46 -291 -1261 46 -223 minecraft:air replace minecraft:fire
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","1"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","2"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","3"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","4"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","5"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","6"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","7"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","8"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","9"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","10"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","11"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","12"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","13"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","14"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","15"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","16"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","17"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","18"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","19"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","20"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","21"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","22"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","23"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","24"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","25"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","26"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","27"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","28"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","29"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","30"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","31"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","32"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","33"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","34"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","35"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","36"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","37"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","38"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","39"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","40"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","41"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","42"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","43"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","44"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","45"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","46"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","47"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","48"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","49"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","50"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","51"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","52"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","53"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","54"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","55"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","56"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","57"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","58"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","59"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","60"]}
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_marker","61"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=fire_marker,limit=10] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=1,tag=selected] run fill -1269 46 -228 -1267 46 -226 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=2,tag=selected] run fill -1263 46 -228 -1261 46 -226 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=3,tag=selected] run fill -1266 46 -231 -1264 46 -229 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=4,tag=selected] run fill -1269 46 -234 -1267 46 -232 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=5,tag=selected] run fill -1266 46 -255 -1264 46 -253 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=6,tag=selected] run fill -1281 46 -246 -1279 46 -244 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=7,tag=selected] run fill -1275 46 -243 -1273 46 -241 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=8,tag=selected] run fill -1275 46 -234 -1273 46 -232 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=9,tag=selected] run fill -1275 46 -231 -1273 46 -229 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=10,tag=selected] run fill -1278 46 -225 -1276 46 -223 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=11,tag=selected] run fill -1281 46 -228 -1279 46 -226 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=12,tag=selected] run fill -1287 46 -228 -1285 46 -226 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=13,tag=selected] run fill -1296 46 -225 -1294 46 -223 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=14,tag=selected] run fill -1293 46 -249 -1291 46 -247 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=15,tag=selected] run fill -1296 46 -252 -1294 46 -250 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=16,tag=selected] run fill -1299 46 -252 -1297 46 -250 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=17,tag=selected] run fill -1314 46 -255 -1312 46 -253 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=18,tag=selected] run fill -1311 46 -258 -1309 46 -256 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=19,tag=selected] run fill -1314 46 -261 -1312 46 -259 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=20,tag=selected] run fill -1314 46 -270 -1312 46 -268 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=21,tag=selected] run fill -1311 46 -273 -1309 46 -271 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=22,tag=selected] run fill -1308 46 -273 -1306 46 -271 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=23,tag=selected] run fill -1303 46 -273 -1305 46 -271 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=24,tag=selected] run fill -1300 46 -273 -1302 46 -271 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=25,tag=selected] run fill -1297 46 -273 -1299 46 -271 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=26,tag=selected] run fill -1299 46 -276 -1297 46 -274 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=27,tag=selected] run fill -1296 46 -279 -1294 46 -277 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=28,tag=selected] run fill -1296 46 -282 -1294 46 -280 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=29,tag=selected] run fill -1293 46 -282 -1291 46 -280 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=30,tag=selected] run fill -1293 46 -285 -1291 46 -283 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=31,tag=selected] run fill -1293 46 -291 -1291 46 -289 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=32,tag=selected] run fill -1296 46 -288 -1294 46 -286 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=33,tag=selected] run fill -1299 46 -285 -1297 46 -283 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=34,tag=selected] run fill -1305 46 -288 -1303 46 -286 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=35,tag=selected] run fill -1308 46 -288 -1306 46 -286 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=36,tag=selected] run fill -1311 46 -291 -1309 46 -289 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=37,tag=selected] run fill -1314 46 -288 -1312 46 -286 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=38,tag=selected] run fill -1311 46 -285 -1309 46 -283 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=39,tag=selected] run fill -1311 46 -282 -1309 46 -280 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=40,tag=selected] run fill -1305 46 -282 -1303 46 -280 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=41,tag=selected] run fill -1314 46 -279 -1312 46 -277 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=42,tag=selected] run fill -1308 46 -279 -1306 46 -277 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=43,tag=selected] run fill -1290 46 -279 -1288 46 -277 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=44,tag=selected] run fill -1287 46 -279 -1285 46 -277 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=45,tag=selected] run fill -1284 46 -279 -1282 46 -277 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=46,tag=selected] run fill -1284 46 -282 -1282 46 -280 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=47,tag=selected] run fill -1281 46 -279 -1279 46 -277 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=48,tag=selected] run fill -1281 46 -285 -1279 46 -283 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=49,tag=selected] run fill -1278 46 -282 -1276 46 -280 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=50,tag=selected] run fill -1275 46 -279 -1273 46 -277 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=51,tag=selected] run fill -1278 46 -276 -1276 46 -274 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=52,tag=selected] run fill -1278 46 -270 -1276 46 -268 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=53,tag=selected] run fill -1278 46 -267 -1276 46 -265 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=54,tag=selected] run fill -1281 46 -267 -1279 46 -265 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=55,tag=selected] run fill -1278 46 -264 -1276 46 -262 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=56,tag=selected] run fill -1263 46 -267 -1261 46 -265 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=57,tag=selected] run fill -1272 46 -267 -1270 46 -265 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=58,tag=selected] run fill -1269 46 -264 -1267 46 -262 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=59,tag=selected] run fill -1266 46 -264 -1264 46 -262 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=60,tag=selected] run fill -1266 46 -261 -1264 46 -259 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
execute if entity @e[type=minecraft:area_effect_cloud,tag=fire_marker,tag=61,tag=selected] run fill -1272 46 -261 -1270 46 -259 minecraft:fire[age=15,up=false,north=false,south=false,west=false,east=false] replace minecraft:air
kill @e[type=minecraft:area_effect_cloud,tag=fire_marker]
execute unless entity @e[x=-1314,y=41,z=-291,dx=53,dy=9,dz=68,tag=fire_timer,type=minecraft:area_effect_cloud] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["fire_timer"],Duration:240}