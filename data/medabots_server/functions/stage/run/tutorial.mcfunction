execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 0
scoreboard players add @s[scores={Dialog=0..623}] Dialog 1
tellraw @s[scores={Dialog=1}] {"translate":"medabots_server:dialog.tutorial.1","color":"green"}
tellraw @s[scores={Dialog=40}] {"translate":"medabots_server:dialog.tutorial.2","color":"green"}
tellraw @s[scores={Dialog=176}] {"translate":"medabots_server:dialog.tutorial.3","color":"green"}
tellraw @s[scores={Dialog=220}] {"translate":"medabots_server:dialog.tutorial.4","color":"green"}
tellraw @s[scores={Dialog=332}] {"translate":"medabots_server:dialog.tutorial.5","color":"green"}
tellraw @s[scores={Dialog=432}] {"translate":"medabots_server:dialog.tutorial.6","color":"green"}
teleport @s[scores={Dialog=488}] ~ ~ ~-10
tellraw @s[scores={Dialog=488}] {"translate":"medabots_server:dialog.tutorial.7","color":"green"}
tellraw @s[scores={Dialog=623}] {"translate":"medabots_server:dialog.tutorial.8","color":"green"}
scoreboard players add @s[x=-1876,y=45,z=-619,dx=7,dy=4,dz=3,scores={Dialog=624}] Dialog 1
scoreboard players add @s[scores={Dialog=625..895}] Dialog 1
teleport @s[scores={Dialog=626}] -1871 45 -611
tellraw @s[scores={Dialog=626}] {"translate":"medabots_server:dialog.tutorial.9","color":"green"}
tellraw @s[scores={Dialog=799}] {"translate":"medabots_server:dialog.tutorial.10","color":"green","with":[{"keybind":"key.use"}]}
tellraw @s[scores={Dialog=895}] {"translate":"medabots_server:dialog.tutorial.11","color":"green"}
execute if entity @s[scores={Dialog=894}] run summon minecraft:item -1884 45 -611 {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:7,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",cpu_data:{team:"enemy"},items:{medal:{id:"minecraft:fishing_rod",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.defense","with":[{"text":"56"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.medapart.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}}}
execute if entity @s[scores={Dialog=895}] positioned -1884 45 -611 run tag @e[distance=..0.7,tag=enemy_medabot] add blocked_medaforce
execute if entity @s[scores={Dialog=895}] positioned -1884 45 -611 run scoreboard players set @e[distance=..0.7,tag=enemy_medabot] HeadUses 0
execute if entity @s[scores={Dialog=895}] positioned -1884 45 -611 run effect give @e[distance=..0.7,tag=enemy_medabot] minecraft:resistance 1000000 9 true
execute if entity @s[scores={Dialog=895}] positioned -1884 45 -611 run scoreboard players set @e[distance=..0.7,tag=enemy_medabot] LeftArmArmor -1
execute if entity @s[scores={Dialog=895}] positioned -1884 45 -611 run scoreboard players set @e[distance=..0.7,tag=enemy_medabot] LegsArmor -1
execute if entity @s[scores={Dialog=896}] if entity @e[tag=enemy_medabot,scores={Stage=0},nbt={HurtTime:9s}] run scoreboard players add @s Dialog 1
scoreboard players add @s[scores={Dialog=897..1102}] Dialog 1
tellraw @s[scores={Dialog=898}] {"translate":"medabots_server:dialog.tutorial.12","color":"green"}
tellraw @s[scores={Dialog=944}] {"translate":"medabots_server:dialog.tutorial.13","color":"green"}
tellraw @s[scores={Dialog=1102}] {"translate":"medabots_server:dialog.tutorial.14","color":"green"}
execute if entity @s[scores={Dialog=1102}] run scoreboard players set @e[scores={Stage=0},tag=enemy_medabot] State 1
execute unless score @s LegsArmor = @s MaxLegsArmor run scoreboard players add @s[scores={Dialog=1103}] Dialog 1
execute if entity @s[scores={Dialog=1104}] run scoreboard players set @e[scores={Stage=0},tag=enemy_medabot] State 2
execute if entity @s[scores={Dialog=1104}] run scoreboard players set @e[scores={Stage=0},tag=enemy_medabot] Time 950
execute if entity @s[scores={Dialog=1104}] run teleport @e[tag=enemy_medabot,scores={Stage=0}] -1884 45 -630
execute if entity @s[scores={Dialog=1104}] run replaceitem entity @e[tag=enemy_medabot,scores={Stage=0}] weapon.mainhand minecraft:air
teleport @s[scores={Dialog=1104}] -1884 45 -618
scoreboard players set @s[scores={Dialog=1104}] HeadUses 0
scoreboard players set @s[scores={Dialog=1104}] RightArmArmor -1
scoreboard players set @s[scores={Dialog=1104}] LeftArmArmor -1
scoreboard players set @s[scores={Dialog=1104}] LegsArmor -1
scoreboard players add @s[scores={Dialog=1104..1465}] Dialog 1
execute if block ~ ~ ~ minecraft:water run teleport @s[scores={Dialog=1101..}] -1884 45 -618
tellraw @s[scores={Dialog=1105}] {"translate":"medabots_server:dialog.tutorial.15","color":"green"}
tellraw @s[scores={Dialog=1177}] {"translate":"medabots_server:dialog.tutorial.16","color":"green"}
tellraw @s[scores={Dialog=1305}] {"translate":"medabots_server:dialog.tutorial.17","color":"green"}
tellraw @s[scores={Dialog=1465}] {"translate":"medabots_server:dialog.tutorial.18","color":"green"}
execute if entity @s[scores={Dialog=1466}] if entity @e[tag=enemy_medabot,scores={Stage=0},nbt={HurtTime:9s}] run scoreboard players add @s Dialog 1
tellraw @s[scores={Dialog=1467}] {"translate":"medabots_server:dialog.tutorial.19","color":"green"}
execute as @e[x=-1888,y=42,z=-633,dx=31,dy=7,dz=27] unless entity @s[scores={Stage=0}] run scoreboard players set @s Stage 0
execute if entity @s[scores={Dialog=1467}] positioned -1884 45 -630 run tag @e[distance=..0.7,tag=enemy_medabot] add dead
scoreboard players set @s[scores={Dialog=1467}] MusicType 1
scoreboard players set @s[scores={Dialog=1467}] Music 0
scoreboard players set @s[scores={Dialog=1467}] State 0
teleport @s[scores={Dialog=1467}] -286 55 -52.0 -90 0
scoreboard players set @s[scores={Dialog=1467}] Dialog 0
scoreboard players reset @s SelfDestruct
scoreboard players reset @s SelfDestructTime
scoreboard players operation @s[scores={Dialog=..1100}] HeadUses = @s MaxHeadUses
scoreboard players operation @s HeadArmor = @s MaxHeadArmor
scoreboard players operation @s[scores={Dialog=..1100}] RightArmArmor = @s MaxRightArmArmor
scoreboard players operation @s[scores={Dialog=..1100}] LeftArmArmor = @s MaxLeftArmArmor
scoreboard players operation @s[scores={Dialog=..1100}] LegsArmor = @s MaxLegsArmor