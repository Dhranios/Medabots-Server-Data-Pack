experience add @s -10000 levels
clear @s
tag @s[scores={FlyCourseLaps=0}] add fallout_race
tag @s[scores={FlyCourseLaps=3}] add 3_laps
tag @s[scores={FlyCourseLaps=4}] add 4_laps
tag @s[scores={FlyCourseLaps=5}] add 5_laps
tag @s[scores={FlyCourseLaps=6}] add 6_laps
tag @s[scores={FlyCourseLaps=7}] add 7_laps
tag @s[scores={FlyCourseLaps=8}] add 8_laps
tag @s[scores={FlyCourseLaps=9}] add 9_laps
tag @s[scores={FlyCourseLaps=10}] add 10_laps
tag @s[scores={FlyCourseFee=0}] add no_fee
tag @s[scores={FlyCourseFee=10}] add 10_medallars
tag @s[scores={FlyCourseFee=20}] add 20_medallars
tag @s[scores={FlyCourseFee=30}] add 30_medallars
tag @s[scores={FlyCourseFee=40}] add 40_medallars
tag @s[scores={FlyCourseFee=50}] add 50_medallars
scoreboard players reset @s
scoreboard players set @s[tag=fallout_race] FlyCourseLaps 0
scoreboard players set @s[tag=3_laps] FlyCourseLaps 3
scoreboard players set @s[tag=4_laps] FlyCourseLaps 4
scoreboard players set @s[tag=5_laps] FlyCourseLaps 5
scoreboard players set @s[tag=6_laps] FlyCourseLaps 6
scoreboard players set @s[tag=7_laps] FlyCourseLaps 7
scoreboard players set @s[tag=8_laps] FlyCourseLaps 8
scoreboard players set @s[tag=9_laps] FlyCourseLaps 9
scoreboard players set @s[tag=10_laps] FlyCourseLaps 10
scoreboard players set @s[tag=no_fee] FlyCourseFee 0
scoreboard players set @s[tag=10_medallars] FlyCourseFee 10
scoreboard players set @s[tag=20_medallars] FlyCourseFee 20
scoreboard players set @s[tag=30_medallars] FlyCourseFee 30
scoreboard players set @s[tag=40_medallars] FlyCourseFee 40
scoreboard players set @s[tag=50_medallars] FlyCourseFee 50
tag @s remove fallout_race
tag @s remove 3_laps
tag @s remove 4_laps
tag @s remove 5_laps
tag @s remove 6_laps
tag @s remove 7_laps
tag @s remove 8_laps
tag @s remove 9_laps
tag @s remove 10_laps
tag @s remove no_fee
tag @s remove 10_medallars
tag @s remove 20_medallars
tag @s remove 30_medallars
tag @s remove 40_medallars
tag @s remove 50_medallars
team leave @s[team=MtBattleMaster]
scoreboard players set @s UpToDate 1
scoreboard players set @s Jump 0
scoreboard players set @s Walk 0
scoreboard players set @s Run 0
scoreboard players set @s Swimming 0
scoreboard players set @s Drop 0
scoreboard players set @s Boat 0
scoreboard players set @s Flying 0
scoreboard players set @s Minecart 0
scoreboard players set @s Horse 0
scoreboard players set @s WalkOnWater 0
scoreboard players set @s WalkUnderWater 0
scoreboard players set @s Pig 0
scoreboard players set @s Fall 0
scoreboard players set @s Sneaking 0
scoreboard players set @s Attack 0
scoreboard players set @s Offline 0
scoreboard players set @s Sound 0
scoreboard players set @s Question 0
scoreboard players set @s MedabotMet 0
scoreboard players set @s Message 0
scoreboard players set @s Medabot 0
scoreboard players set @s Death 0
scoreboard players set @s Battle 0
scoreboard players set @s UsePart 0
scoreboard players set @s Trading 0
scoreboard players set @s Time 0
scoreboard players set @s Medaforce 0
scoreboard players set @s MedaforceTimer 0
scoreboard players set @s Charge 0
scoreboard players set @s Float 0
scoreboard players set @s Fly 0
scoreboard players set @s FlyTime 0
scoreboard players set @s Error 0
scoreboard players set @s Money 0
scoreboard players set @s PreviousError 0
scoreboard players set @s[team=Moderator] Moderator 1
scoreboard players set @s[team=!Moderator] Moderator 0
scoreboard players set @s StreetPassHits 0
scoreboard players set @s StreetPassCool 0
scoreboard players set @s StreetPassTime 0
scoreboard players set @s Verified 2
scoreboard players set @s Dialog 0
scoreboard players set @s RobattleMusic 0
scoreboard players set @s Killer 0
tag @s add killerable
execute unless entity @s[scores={FlyCourseLaps=0..}] run scoreboard players set @s FlyCourseLaps 3
execute unless entity @s[scores={FlyCourseFee=0..}] run scoreboard players set @s FlyCourseFee 10
experience add @s 1 levels
experience add @s -1 levels
effect give @s minecraft:health_boost 1000000 19 true
effect give @s minecraft:instant_health 1 19 true
advancement grant @s only medabots_server:wave_1/get_all_medabots/saikachis
replaceitem entity @s hotbar.0 minecraft:diamond_pickaxe{Unbreakable:1b,Damage:4,CustomModelData:0,AttributeModifiers:[],HideFlags:4,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.male_tinpet"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}]}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis","extra":[{"text":" "},{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}]}']},medabots_server:{id:"medabots_server:male_tinpet",part:"tinpet",items:{medal:{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:6,CustomModelData:1,HideFlags:4,AttributeModifiers:[],AttributeModifiers:[],display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.kabuto_medal"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal"}','{"italic":false,"color":"white","translate":"medabots_server:move.kabuto_medal.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}']},medabots_server:{id:"medabots_server:kabuto_medal",move:"medaforce_charge",part:"medal",activated:0b,version:1}}},head:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:4,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.missile"}','{"italic":false,"color":"white","translate":"medabots_server:move.missile.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.more","with":[{"text":"6"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"75"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_balister.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saikachis_balister",gender:0b,move:"missile",part:"head",armor:75,power:28,uses:6,activated:0b,version:1}}},right_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:3,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.rifle"}','{"italic":false,"color":"white","translate":"medabots_server:move.rifle.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_fuser.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saikachis_fuser",gender:0b,move:"rifle",part:"right_arm",armor:45,power:30,activated:0b,version:1}}},left_arm:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:2,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.gatling"}','{"italic":false,"color":"white","translate":"medabots_server:move.gatling.description"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.uses.infinite"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"45"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_blaster.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saikachis_blaster",gender:0b,move:"gatling",part:"left_arm",armor:45,power:26,activated:0b,version:1}}},legs:{id:"minecraft:fishing_rod",Count:1b,tag:{Damage:1,Unbreakable:1b,HideFlags:4,CustomModelData:47,display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace"}',Lore:['{"italic":false,"color":"white","translate":"medabots_server:move.two_legged"}','{"italic":false,"color":"white","translate":"medabots_server:move.two_legged.description"}','{"text":""}','{"italic":false,"color":"white","translate":"medabots_server:item.part.armor","with":[{"text":"50"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.part.male"}','{"italic":false,"color":"white","translate":"medabots_server:entity.saikachis"}','{"italic":false,"color":"white","translate":"medabots_server:item.part.wave","with":[{"text":"1"}]}','{"italic":false,"color":"white","translate":"medabots_server:item.saikachis_enplace.model"}']},medabots_server:{stage_item:0b,id:"medabots_server:saikachis_enplace",gender:0b,move:"two_legged",part:"legs",armor:50,defense:56,activated:0b,model_data:{leg_count:2},version:1}}}},version:1}}
stopsound @s music
teleport @s -1873 51 -620
spawnpoint @s -286 55 -52
tag @s add try_tutorial_level