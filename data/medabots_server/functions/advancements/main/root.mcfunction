experience add @s -10000 levels
clear @s
tag @s[scores={ArenaType=0}] add 1v1
tag @s[scores={ArenaType=1}] add 1v3
tag @s[scores={ArenaType=2}] add 2v2
tag @s[scores={ArenaType=3}] add 1v1v1v1
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
scoreboard players set @s[tag=1v1] ArenaType 0
scoreboard players set @s[tag=1v3] ArenaType 1
scoreboard players set @s[tag=2v2] ArenaType 2
scoreboard players set @s[tag=1v1v1v1] ArenaType 3
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
tag @s remove 1v1
tag @s remove 1v3
tag @s remove 2v2
tag @s remove 1v1v1v1
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
scoreboard players set @s State 0
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
execute unless entity @s[scores={ArenaType=0..}] run scoreboard players set @s ArenaType 0
execute unless entity @s[scores={FlyCourseLaps=0..}] run scoreboard players set @s FlyCourseLaps 3
execute unless entity @s[scores={FlyCourseFee=0..}] run scoreboard players set @s FlyCourseFee 10
experience add @s 1 levels
experience add @s -1 levels
effect give @s minecraft:health_boost 1000000 19 true
effect give @s minecraft:instant_health 1 19 true
stopsound @s music
teleport @s -1873 51 -620
spawnpoint @s -286 55 -52
tag @s add try_tutorial_level