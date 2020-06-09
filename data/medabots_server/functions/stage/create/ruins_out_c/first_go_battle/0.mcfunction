execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=27}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=0,Gamemode=0,Stage=27}] run summon minecraft:item -1617 44 -688 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_hatchin"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_hand"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_swick"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:40},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kuwagata_medal",move:"charge_medaforce",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_hatchin"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hold"}','{"italic":false,"color":"white","translate":"medabots_server:move.hold.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"9"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_hatchin.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kanehachi_mk2_hatchin",gender:0b,move:"hold",part:"head",armor:55,charge:60,power:28,uses:9,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_hand"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hide"}','{"italic":false,"color":"white","translate":"medabots_server:move.hide.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_hand.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:seven_colors_invisi_hand",gender:0b,move:"hide",part:"right_arm",armor:45,charge:60,power:45,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_flame_gun",gender:0b,move:"melt",part:"left_arm",armor:45,charge:60,power:22,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:21,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_swick"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kanehachi_mk2"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kanehachi_mk2_swick.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kanehachi_mk2_swick",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:40,activated:0b,model_data:{height:0,legs:[{l:0,u:0,f:0},{l:0,u:0,f:0},{l:0,u:0,f:0},{l:0,u:0,f:0},{l:0,u:0,f:0},{l:0,u:0,f:0}]},version:1}}}},version:1}}}}
execute positioned -1648 44 -698 run function medabots_server:set_blocks/stone
scoreboard players set @e[x=-1616.5,y=44,z=-683.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1616 44 -685
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=27}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=0,Gamemode=0,Stage=27}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=0,Gamemode=0,Stage=27}] State 2
teleport @a[scores={StageIndex=0,Gamemode=0,Stage=27}] -1617 44 -688
summon minecraft:area_effect_cloud -1617 44 -687 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:ruins_out_c/robattle value 3600
bossbar set medabots_server:ruins_out_c/robattle players @a[scores={Gamemode=0,Stage=27}]
bossbar set medabots_server:ruins_out_c/time players