execute unless entity @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=8] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=8] run summon minecraft:item -1827 45 -340 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_boartusk"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_drillril"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_mashglow"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:5,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.spider_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.spider_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:spider_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_boartusk"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"12"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_boartusk.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:boarbooster_boartusk",gender:1b,move:"hammer",part:"head",armor:55,power:28,uses:12,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_drillril"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.break"}','{"italic":false,"color":"white","translate":"medabots_server:move.break.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_drillril.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:boarbooster_drillril",gender:1b,move:"break",part:"right_arm",armor:50,power:30,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:sailor_multi_short_shot",gender:1b,move:"rifle",part:"left_arm",armor:35,power:24,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:29,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_mashglow"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"28"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.boarbooster"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.boarbooster_mashglow.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:boarbooster_mashglow",gender:1b,move:"fly",part:"legs",armor:40,defense:28,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1823 45 -337 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned -1823 45 -334 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned -1822 45 -333 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned -1821 45 -335 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned -1821 45 -337 run function medabots_server:spawn_entities/guard/slow/mission
execute positioned -1821 45 -339 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1819 45 -337 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1819 45 -340 run function medabots_server:spawn_entities/guard/fast/mission
execute positioned -1818 45 -339 run function medabots_server:spawn_entities/guard/fast/mission
scoreboard players set @e[x=-1834.5,y=45,z=-334.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1834 45 -334
effect give @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=8] minecraft:night_vision 2 0 true
effect give @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=8] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=8] Battle 2
teleport @a[x=-1906,y=51,z=-345,dx=93,dy=4,dz=95,tag=8] -1827 45 -340
summon minecraft:area_effect_cloud -1833 45 -336 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:rock_e/robattle value 3600
bossbar set medabots_server:rock_e/robattle players @a[scores={Stage=53}]
bossbar set medabots_server:rock_e/time players