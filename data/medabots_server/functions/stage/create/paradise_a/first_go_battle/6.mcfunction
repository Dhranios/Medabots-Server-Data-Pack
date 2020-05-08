execute unless entity @a[scores={StageIndex=6,Gamemode=0,Stage=21}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[scores={StageIndex=6,Gamemode=0,Stage=21}] run summon minecraft:item -1743 45 -652 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_body"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_twirl"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy",level:32},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:8,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:chameleon_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_body"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hide"}','{"italic":false,"color":"white","translate":"medabots_server:move.hide.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_body.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:seven_colors_invisi_body",gender:0b,move:"hide",part:"head",armor:70,power:82,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:5,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.no_defend"}','{"italic":false,"color":"white","translate":"medabots_server:move.no_defend.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"60"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.kasou_touchu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.kasou_touchu_shitake.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:kasou_touchu_shitake",gender:0b,move:"no_defend",part:"right_arm",armor:60,power:16,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_rat.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:poison_scorpi_scorpion_rat",gender:0b,move:"melt",part:"left_arm",armor:45,power:28,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_twirl"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_twirl.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:seven_colors_twirl",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:52,activated:0b,model_data:{height:0,leg_offset:[{l:0,u:0,f:0},{l:0,u:0,f:0},{l:0,u:0,f:0},{l:0,u:0,f:0}]},version:1}}}},version:1}}}}
execute positioned -1744 45 -652 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1738 45 -650 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1750 45 -645 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1728 45 -649 run function medabots_server:spawn_entities/guard/medium/mission
execute positioned -1737 45 -642 run function medabots_server:spawn_entities/guard/medium/mission
scoreboard players set @e[x=-1741.5,y=45,z=-661.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s State 2
teleport @s -1744 45 -655
effect give @a[scores={StageIndex=6,Gamemode=0,Stage=21}] minecraft:night_vision 2 0 true
effect give @a[scores={StageIndex=6,Gamemode=0,Stage=21}] minecraft:blindness 2 0 true
scoreboard players set @a[scores={StageIndex=6,Gamemode=0,Stage=21}] State 2
teleport @a[scores={StageIndex=6,Gamemode=0,Stage=21}] -1743 45 -652
summon minecraft:area_effect_cloud -1745 45 -653 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_all_guards"],Duration:2147483647}
bossbar set medabots_server:paradise_a/robattle value 3600
bossbar set medabots_server:paradise_a/robattle players @a[scores={Gamemode=0,Stage=21}]
bossbar set medabots_server:paradise_a/time players