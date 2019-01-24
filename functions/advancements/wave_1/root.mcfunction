experience add @s -10000 levels
clear @s
tellraw @s {"translate":"medabots_server:message.welcome","color":"gold","extra":[{"text":"\n"},{"translate":"medabots_server:settings.click.1","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 1"},"hoverEvent":{"action":"show_text","Value":{"translate":"medabots_server:settings.click.click"}}},{"text":"\n"},{"translate":"medabots_server:settings.click.3","color":"blue","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set 3"},"hoverEvent":{"action":"show_text","value":{"translate":"medabots_server:settings.click.click"}}}]}
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
scoreboard players set @s Time 1
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
execute unless entity @s[scores={FlyCourseLaps=0..}] run scoreboard players set @s FlyCourseLaps 3
execute unless entity @s[scores={FlyCourseFee=0..}] run scoreboard players set @s FlyCourseFee 10
experience add @s 1 levels
experience add @s -1 levels
effect give @s minecraft:health_boost 1000000 19 true
effect give @s minecraft:instant_health 1 19 true
replaceitem entity @s hotbar.5 minecraft:written_book{pages:["{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.read_me_book.page.1.1\",\"extra\":[{\"text\":\"\\n\"},{\"italic\":false,\"color\":\"black\",\"translate\":\"medabots_server:item.read_me_book.page.1.2\"}]}"],author:"FVbico",title:"Read Me",HideFlags:32,display:{Name:"{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.read_me_book.title\"}",Lore:["{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.read_me_book.author\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.read_me_book.pages\"}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.read_me_book.version\",\"with\":[{\"text\":\"16-4-2017\"}]}","{\"italic\":false,\"color\":\"white\",\"translate\":\"medabots_server:item.generic.drop_to_kill\"}"]},medabots_server:{id:"medabots_server:read_me_book",kill:1b,version:"16-4-2017"}}
function medabots_server:give_medaparts/saikachis
function medabots_server:give_medal/kabuto
function medabots_server:give_tinpet/male
stopsound @s music
teleport @s -286 55 -52.0 -90 0
spawnpoint @s -286 55 -52
tag @s add dialog_infinity_opening