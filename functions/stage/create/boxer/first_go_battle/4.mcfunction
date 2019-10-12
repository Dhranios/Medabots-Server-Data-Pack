execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] run summon minecraft:item -1908 44 -588 {Tags:["spawn_medabot"],Rotation:[-90.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:1,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.female_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:female_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.scout"}','{"italic":false,"color":"white","translate":"medabots_server:move.scout.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_variablehair.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:sailor_multi_variablehair",gender:1b,move:"scout",part:"head",armor:75,power:50,uses:7,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_pateri_vulcan.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:sailor_multi_pateri_vulcan",gender:1b,move:"gatling",part:"right_arm",armor:35,power:20,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_short_shot.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:sailor_multi_short_shot",gender:1b,move:"rifle",part:"left_arm",armor:35,power:24,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:39,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.female"}','{"italic":false,"color":"white","translate":"medabots_server:entity.sailor_multi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.sailor_multi_flaregather.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:sailor_multi_flaregather",gender:1b,move:"two_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute positioned -1914 44 -588 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1902 44 -585 run function medabots_server:set_blocks/stone
execute positioned -1904 44 -583 run function medabots_server:set_blocks/stone
execute positioned -1906 44 -581 run function medabots_server:set_blocks/stone
execute positioned -1908 44 -584 run function medabots_server:set_blocks/stone
execute positioned -1911 44 -583 run function medabots_server:set_blocks/stone
execute positioned -1911 44 -586 run function medabots_server:set_blocks/stone
execute positioned -1913 44 -587 run function medabots_server:set_blocks/stone
execute positioned -1911 44 -590 run function medabots_server:set_blocks/stone
execute positioned -1911 44 -592 run function medabots_server:set_blocks/stone
execute positioned -1909 44 -595 run function medabots_server:set_blocks/stone
execute positioned -1906 44 -593 run function medabots_server:set_blocks/stone
execute positioned -1903 44 -594 run function medabots_server:set_blocks/stone
execute positioned -1902 44 -592 run function medabots_server:set_blocks/stone
execute positioned -1900 44 -590 run function medabots_server:set_blocks/stone
execute positioned -1900 44 -587 run function medabots_server:set_blocks/stone
scoreboard players set @e[x=-1899.5,y=44,z=-580.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1905 44 -589
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] minecraft:night_vision 2 0 true
effect give @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] Battle 2
teleport @a[x=-1921,y=50,z=-603,dx=64,dy=4,dz=64,tag=4] -1908 44 -588
summon minecraft:area_effect_cloud -1907 44 -589 {CustomName:'{"translate":"medabots_server:message.stage.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:boxer/robattle value 3600
bossbar set medabots_server:boxer/robattle players @a[scores={Stage=29}]
bossbar set medabots_server:boxer/time players