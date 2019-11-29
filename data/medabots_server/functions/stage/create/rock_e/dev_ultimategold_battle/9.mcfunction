execute unless entity @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=9] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=9] run summon minecraft:item -1900 45 -333 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.nino_bolganone"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.nino_ragnarok"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.nino_excalibur"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.nino_sand_proof_boots"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy",practice_battle:1b},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:6,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.alien_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.alien_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:alien_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:70,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nino_bolganone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"18"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nino_bolganone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nino_bolganone",gender:1b,move:"melt",part:"head",armor:50,power:22,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:70,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nino_ragnarok"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"15"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nino_ragnarok.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nino_ragnarok",gender:1b,move:"napalm",part:"right_arm",armor:15,power:20,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:70,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nino_excalibur"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.anti_fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"30"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nino_excalibur.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nino_excalibur",gender:1b,move:"anti_fly",part:"left_arm",armor:30,power:28,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:70,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.nino_sand_proof_boots"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.nino"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.nino_sand_proof_boots.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:nino_sand_proof_boots",gender:1b,move:"two_legged",part:"legs",armor:40,defense:20,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute positioned -1885 45 -336 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned -1886 45 -331 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned -1888 45 -325 run function medabots_server:spawn_entities/cannon/search/west/delay_4
execute positioned -1887 45 -319 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned -1891 45 -319 run function medabots_server:spawn_entities/cannon/search/north/delay_4
execute positioned -1896 45 -327 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1896 45 -330 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1893 45 -336 run function medabots_server:spawn_entities/cannon/search/east/delay_4
execute positioned -1892 45 -342 run function medabots_server:spawn_entities/cannon/search/south/delay_4
execute positioned -1887 45 -342 run function medabots_server:spawn_entities/cannon/search/south/delay_4
scoreboard players set @e[x=-1874.5,y=45,z=-331.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1877 45 -333
effect give @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=9] minecraft:night_vision 2 0 true
effect give @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=9] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=9] Battle 2
teleport @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=9] -1900 45 -333
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1892 45 -334 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[0.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1888 45 -332 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-180.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
scoreboard players set @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,scores={Stage=53}] Music 0
scoreboard players set @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,scores={Stage=53}] MusicType 1
scoreboard players set @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,scores={Stage=53}] Battle 0
bossbar set medabots_server:rock_e/robattle value 3600
bossbar set medabots_server:rock_e/robattle players @a[scores={Stage=53}]
bossbar set medabots_server:rock_e/time players