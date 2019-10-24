execute unless entity @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] run summon minecraft:item -1651 45 -126 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_body"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_twirl"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:8,HideFlags:4,AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.chameleon_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.chameleon_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:chameleon_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_body"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hide"}','{"italic":false,"color":"white","translate":"medabots_server:move.hide.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"5"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_body.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:seven_colors_invisi_body",gender:0b,move:"hide",part:"head",armor:70,power:82,uses:5,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:30,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.guard_optical"}','{"italic":false,"color":"white","translate":"medabots_server:move.guard_optical.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"55"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.dondoguu"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.dondoguu_dohtack.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:dondoguu_dohtack",gender:0b,move:"guard_optical",part:"right_arm",armor:55,power:0,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:12,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.hellphoenix"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.hellphoenix_flame_gun.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:hellphoenix_flame_gun",gender:0b,move:"melt",part:"left_arm",armor:45,power:22,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_twirl"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"52"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_twirl.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:seven_colors_twirl",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:52,activated:0b,model_data:{leg_count:4},version:1}}}},version:1}}}}
scoreboard players set @e[x=-1661.5,y=45,z=-123.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1654 45 -127
effect give @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] minecraft:night_vision 2 0 true
effect give @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] Battle 2
teleport @a[x=-1705,y=51,z=-179,dx=63,dy=4,dz=63,tag=0] -1651 45 -126
summon minecraft:area_effect_cloud -1652 45 -127 {CustomName:'{"translate":"medabots_server:entity.mission"}',Tags:["mission","hide_normal_time","defeat_the_enemy"],Duration:2147483647}
bossbar set medabots_server:jungle_a/robattle value 3600
bossbar set medabots_server:jungle_a/robattle players @a[scores={Stage=3}]
bossbar set medabots_server:jungle_a/time players