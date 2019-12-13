execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,scores={StageIndex=4}] run tellraw @s[tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,scores={StageIndex=4}] run summon minecraft:item -1678 44 -626 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burn_head"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.shoot_spider","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.shoot_spider_cheapertrap"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{stage_item:0b,id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burn_head"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.napalm"}','{"italic":false,"color":"white","translate":"medabots_server:move.napalm.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"7"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"80"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_burn_head.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_burn_head",gender:0b,move:"napalm",part:"head",armor:80,power:25,uses:7,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:18,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.shoot_spider_cheapertrap"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap"}','{"italic":false,"color":"white","translate":"medabots_server:move.melee_trap.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.shoot_spider"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.shoot_spider_cheapertrap.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:shoot_spider_cheapertrap",gender:0b,move:"melee_trap",part:"right_arm",armor:45,power:23,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:20,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.destroy"}','{"italic":false,"color":"white","translate":"medabots_server:move.destroy.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"35"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.basstroyer"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.basstroyer_srounding.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:basstroyer_srounding",gender:0b,move:"destroy",part:"left_arm",armor:35,power:59,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:13,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.fly"}','{"italic":false,"color":"white","translate":"medabots_server:move.fly.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"20"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"40"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.fly_falcon"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.fly_falcon_flyphone.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:fly_falcon_flyphone",gender:0b,move:"fly",part:"legs",armor:40,defense:20,activated:0b,model_data:{leg_count:0},version:1}}}},version:1}}}}
execute positioned -1680 44 -618 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1685 44 -623 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1679 44 -624 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1671 44 -624 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1684 44 -628 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1675 44 -629 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1678 44 -631 run function medabots_server:set_blocks/hole/delay_5
execute positioned -1676 44 -618 run function medabots_server:set_blocks/stone
execute positioned -1683 44 -620 run function medabots_server:set_blocks/stone
execute positioned -1673 44 -620 run function medabots_server:set_blocks/stone
execute positioned -1677 44 -621 run function medabots_server:set_blocks/stone
execute positioned -1674 44 -623 run function medabots_server:set_blocks/stone
execute positioned -1682 44 -624 run function medabots_server:set_blocks/stone
execute positioned -1674 44 -626 run function medabots_server:set_blocks/stone
execute positioned -1682 44 -627 run function medabots_server:set_blocks/stone
execute positioned -1679 44 -630 run function medabots_server:set_blocks/stone
scoreboard players set @e[x=-1678.5,y=44,z=-613.5,distance=..0.7,tag=door,scores={PowerNeeded=0}] PowerNeeded 1
effect give @s minecraft:night_vision 2 0 true
effect give @s minecraft:blindness 2 0 true
scoreboard players set @s Battle 2
teleport @s -1679 44 -622
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,scores={StageIndex=4}] minecraft:night_vision 2 0 true
effect give @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,scores={StageIndex=4}] minecraft:blindness 2 0 true
scoreboard players set @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,scores={StageIndex=4}] Battle 2
teleport @a[x=-1760,y=51,z=-633,dx=92,dy=4,dz=92,scores={StageIndex=4}] -1678 44 -626
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"medabots_server:entity.stage_randomizing_marker"}',Tags:["referee_marker","2"]}
tag @e[sort=random,type=minecraft:area_effect_cloud,tag=referee_marker,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=1,tag=selected] run summon minecraft:armor_stand -1677 44 -624 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[90.0f,0.0f]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=referee_marker,tag=2,tag=selected] run summon minecraft:armor_stand -1680 44 -624 {CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","hide_normal_time"],Invisible:1b,Rotation:[-90.0f,0.0f]}
kill @e[type=minecraft:area_effect_cloud,tag=referee_marker]
bossbar set medabots_server:laboratory_b/robattle value 3600
bossbar set medabots_server:laboratory_b/robattle players @a[scores={Stage=18}]
bossbar set medabots_server:laboratory_b/time players