execute unless entity @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,scores={StageIndex=0}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,scores={StageIndex=0}] run summon minecraft:item -1604 45 -170 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_crab_hit"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_arm"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_zigzag"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:0,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kuwagata_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kuwagata_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kuwagata_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melt"}','{"italic":false,"color":"white","translate":"medabots_server:move.melt.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"70"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_scorpion_dog.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:poison_scorpi_scorpion_dog",gender:0b,move:"melt",part:"head",armor:70,power:22,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:9,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_crab_hit"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hammer"}','{"italic":false,"color":"white","translate":"medabots_server:move.hammer.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.attack_tyrano"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.attack_tyrano_crab_hit.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:attack_tyrano_crab_hit",gender:0b,move:"hammer",part:"right_arm",armor:40,power:24,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:28,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_arm"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.hide"}','{"italic":false,"color":"white","translate":"medabots_server:move.hide.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.seven_colors"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.seven_colors_invisi_arm.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:seven_colors_invisi_arm",gender:0b,move:"hide",part:"left_arm",armor:45,power:59,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:7,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_zigzag"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.multi_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.poison_scorpi"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.poison_scorpi_zigzag.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:poison_scorpi_zigzag",gender:0b,move:"multi_legged",part:"legs",armor:40,defense:20,activated:0b,model_data:{leg_count:6},version:1}}}},version:1}}}}
scoreboard players set @e[x=-1615.5,y=45,z=-166.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1608 45 -171
effect give @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,scores={StageIndex=0}] minecraft:night_vision 2 0 true
effect give @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,scores={StageIndex=0}] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,scores={StageIndex=0}] Battle 2
teleport @a[x=-1636,y=51,z=-180,dx=63,dy=4,dz=63,scores={StageIndex=0}] -1604 45 -170
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1605 45 -172 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[45.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1607 45 -169 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-135.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:rock_a/robattle value 3600
bossbar set medabots_server:rock_a/robattle players @a[scores={Stage=2}]
bossbar set medabots_server:rock_a/time players