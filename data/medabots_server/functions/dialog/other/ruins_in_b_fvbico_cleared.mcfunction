execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/other ruins_in_b_fvbico_cleared
scoreboard players set @s[scores={Dialog=1}] MusicType 32
scoreboard players set @s[scores={Dialog=1}] Music 0
execute if entity @s[scores={Dialog=1,Jukebox=1..}] run function medabots_server:items/jukebox/turn_off
execute if entity @s[scores={Dialog=1}] positioned -1622 50 -525 run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -1620 50 -522 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=1}] positioned -1620 50 -522 run tag @e[tag=rubberobo,tag=this_dialog,limit=1,distance=..0.7] add rubberobo_1
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1..263}] at @e[tag=rubberobo_1,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=rubberobo_1,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
teleport @s[scores={Dialog=1}] -1620 50 -526 0 0
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.1"}]}
tellraw @s[scores={Dialog=8}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.2"}]}
tellraw @s[scores={Dialog=48}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.3"}]}
tellraw @s[scores={Dialog=104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.4"}]}
tellraw @s[scores={Dialog=128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.5"}]}
tellraw @s[scores={Dialog=200}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.6"}]}
execute if entity @s[scores={Dialog=264}] positioned -1620 50 -481 run function medabots_server:spawn_entities/cutscene/rubberobo
execute if entity @s[scores={Dialog=264}] positioned -1620 50 -481 run tag @e[tag=rubberobo,tag=this_dialog,limit=1,distance=..0.7] add rubberobo_2
execute if entity @s[scores={Dialog=264}] as @e[tag=rubberobo_2,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1622 50 -518
execute if entity @s[scores={Dialog=264}] run tag @e[tag=rubberobo_2,tag=this_dialog] add running
execute if entity @s[scores={Dialog=265..439}] as @e[tag=rubberobo_2,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=440}] run tag @e[tag=rubberobo_2,tag=this_dialog] remove running
execute if entity @s[scores={Dialog=440..467}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=264..312}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=440..467}] as @e[tag=rubberobo_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.7"}]}
scoreboard players set @s[scores={Dialog=312}] MusicType 33
scoreboard players set @s[scores={Dialog=312}] Music 0
execute if entity @s[scores={Dialog=312}] positioned -1620 50 -481 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=312}] positioned -1620 50 -481 run tag @e[tag=select_corps,tag=this_dialog,limit=1,distance=..0.7] add select_corps_1
execute if entity @s[scores={Dialog=312}] as @e[tag=select_corps_1,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1621 50 -514
execute if entity @s[scores={Dialog=312}] run tag @e[tag=select_corps_1,tag=this_dialog] add walking
execute if entity @s[scores={Dialog=313..467}] as @e[tag=select_corps_1,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=467}] run tag @e[tag=select_corps_1,tag=this_dialog] remove walking
execute if entity @s[scores={Dialog=467}] as @e[tag=select_corps_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=313..467}] as @e[tag=rubberobo_1,tag=this_dialog,limit=1] at @s facing entity @e[tag=select_corps_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=312}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.8"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.9"}]}
tellraw @s[scores={Dialog=400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.10"}]}
tellraw @s[scores={Dialog=408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.11"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.12"}]}
tellraw @s[scores={Dialog=472}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.13"}]}
tellraw @s[scores={Dialog=512}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.14"}]}
execute if entity @s[scores={Dialog=560}] positioned -1621 50 -482 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=560}] positioned -1621 50 -482 run tag @e[tag=select_corps,tag=this_dialog,limit=1,distance=..0.7] add select_corps_2
execute if entity @s[scores={Dialog=560}] as @e[tag=select_corps_2,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1622 50 -508
execute if entity @s[scores={Dialog=560}] run tag @e[tag=select_corps_2,tag=this_dialog] add walking
execute if entity @s[scores={Dialog=561..682}] as @e[tag=select_corps_2,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=683}] run tag @e[tag=select_corps_2,tag=this_dialog] remove walking
execute if entity @s[scores={Dialog=683}] as @e[tag=select_corps_2,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_2,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=560}] positioned -1619 50 -482 run function medabots_server:spawn_entities/cutscene/select_corps
execute if entity @s[scores={Dialog=560}] positioned -1619 50 -482 run tag @e[tag=select_corps,tag=this_dialog,limit=1,distance=..0.7] add select_corps_3
execute if entity @s[scores={Dialog=560}] as @e[tag=select_corps_3,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1619 50 -508
execute if entity @s[scores={Dialog=560}] run tag @e[tag=select_corps_3,tag=this_dialog] add walking
execute if entity @s[scores={Dialog=561..682}] as @e[tag=select_corps_3,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=683}] run tag @e[tag=select_corps_3,tag=this_dialog] remove walking
execute if entity @s[scores={Dialog=683}] as @e[tag=select_corps_3,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_3,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=560}] run summon minecraft:armor_stand -1620 50 -481 {Invulnerable:1b,NoGravity:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2039583,Tags:["fvbico","cutscene","this_dialog"],Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]},Rotation:[-105.0f,0.0f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:12895428}}},{id:"minecraft:leather_leggings",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:3355443}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{AttributeModifiers:[],Unbreakable:1b,display:{color:12895428}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"79bf99e1-621c-4e91-bd81-a77a08b386ba",Properties:{textures:[{Signature:"vscEtgwmjoz+5gi2EsOoZj5QcMVopvdo9ZD7UitciT1CwKcWJDG/cqi5l1HCZZh0GxGoSSvHWd/quVaFws2VfyvdK7YA6lmf9aernc2FCNk/QxmMeMDetkezgVtIdOUR9gdBx6y7qw/0gNNdD+yLYN9c0CXbpBZX7WZRjnym3Lf1bzUENWCS3LPV7klZ67YSnxFwX9ixgeB5nYsOaueryVxxjSPM1XNOB+ghF5UX8G5cjGaeDkHyRVh2qKnHd7AxMd+y+iKERhMPVnBRMtGY22hiX/ov5hRBZthf7TfRLJ6iwZsO+kr2mtzlc2/gn3bSHbVXMZrnu3nMGRq+qspEU1sNAwwj38VHyb/WKF2CNY3Lp0HtCvjpqrA7B3R/NtBiWkBQoYbXp5Tt/6F5KfwbOiThqXnRqC3aUAObIcFgVaPEKrC12mgwtXmHwFFD8L6S4YMwB6fj7XG5jQy5zBw4PzT/S7lZ61LxQOjT8llwOod7inHGp+rycbed0Qb4GBOD4LXym/HdytUT8WXRO7XmE3+6/3SuNW2abClXLZR3PbphYCTezZ5Evx8AvQ9FTyZTIBf5fJRata4xo5GO5S0HmeY9LAGdF86pL+J/ZO0GjZ6lbUtTvNOZLjR+aA8erNDV2GmHz2QYckIC7FbPDGk8uIcEW6YcfoNhASzkppPO2rc=",Value:"eyJ0aW1lc3RhbXAiOjE1NzQzNDAyODE5NDcsInByb2ZpbGVJZCI6Ijc5YmY5OWUxNjIxYzRlOTFiZDgxYTc3YTA4YjM4NmJhIiwicHJvZmlsZU5hbWUiOiJGVmJpY28iLCJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGY0YzRmMTUxMjhiMDBkODk2YTRiMWJiMmY2MDUyZTMzNDcxYzE0ODNkNTcxZWRhNDRlNWNiNjA3MTAzY2NhMyJ9LCJDQVBFIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2NzdmN2Q5OGFjNzBhNTMzNzEzNTE4NDE2ZGY0NDUyZmU1NzAwMzY1YzA5Y2Y0NWQwZDE1NmVhOTM5NjU1MSJ9fX0="}]},Name:"FVbico"}}}]}
execute if entity @s[scores={Dialog=560}] as @e[x=-1620,y=50,z=-481,tag=fvbico,distance=..1] run scoreboard players operation @s DialogNr = #temp DialogNr
execute if entity @s[scores={Dialog=560}] as @e[tag=fvbico,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1620 50 -517
execute if entity @s[scores={Dialog=560}] run tag @e[tag=fvbico,tag=this_dialog] add walking
execute if entity @s[scores={Dialog=561..729}] as @e[tag=fvbico,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=730}] run tag @e[tag=fvbico,tag=this_dialog] remove walking
execute if entity @s[scores={Dialog=730..996}] as @e[tag=fvbico,tag=this_dialog,limit=1] at @s facing entity @e[tag=rubberobo_1,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=560..1950}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=fvbico,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.15"}]}
tellraw @s[scores={Dialog=584}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.select_corps","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.16"}]}
tellraw @s[scores={Dialog=658}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.17"}]}
tellraw @s[scores={Dialog=698}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.18"}]}
tellraw @s[scores={Dialog=706}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.19"}]}
tellraw @s[scores={Dialog=722}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.20"}]}
tellraw @s[scores={Dialog=738}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.rubberobo","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.21"}]}
tellraw @s[scores={Dialog=770}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.22"}]}
execute if entity @s[scores={Dialog=802}] as @e[tag=rubberobo_1,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1619 50 -517
execute if entity @s[scores={Dialog=802}] run tag @e[tag=rubberobo_1,tag=this_dialog] add running
execute if entity @s[scores={Dialog=803..827}] as @e[tag=rubberobo_1,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=828}] as @e[tag=rubberobo_1,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1620 50 -481
execute if entity @s[scores={Dialog=829..996}] as @e[tag=rubberobo_1,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=996}] run teleport @e[tag=rubberobo_1,tag=this_dialog] ~ -100 ~
execute if entity @s[scores={Dialog=996}] run tag @e[tag=rubberobo_1,tag=this_dialog] add dead
execute if entity @s[scores={Dialog=802}] as @e[tag=rubberobo_2,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1620 50 -481
execute if entity @s[scores={Dialog=802}] as @e[tag=rubberobo_2,tag=this_dialog] run tag @s add running
execute if entity @s[scores={Dialog=803..976}] as @e[tag=rubberobo_2,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=976}] run teleport @e[tag=rubberobo_2,tag=this_dialog] ~ -100 ~
execute if entity @s[scores={Dialog=976}] run tag @e[tag=rubberobo_2,tag=this_dialog] add dead
execute if entity @s[scores={Dialog=802}] as @e[tag=select_corps,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1620 50 -481
execute if entity @s[scores={Dialog=802}] as @e[tag=select_corps,tag=this_dialog] run tag @s add running
execute if entity @s[scores={Dialog=803..957}] as @e[tag=select_corps_1,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=957}] run tag @e[tag=select_corps_1,tag=this_dialog] add dead
execute if entity @s[scores={Dialog=803..929}] as @e[tag=select_corps_2,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=929}] run tag @e[tag=select_corps_2,tag=this_dialog] add dead
execute if entity @s[scores={Dialog=803..929}] as @e[tag=select_corps_3,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=929}] run tag @e[tag=select_corps_3,tag=this_dialog] add dead
execute if entity @s[scores={Dialog=998..1781}] at @e[tag=fvbico,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=fvbico,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=998}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.23"}]}
tellraw @s[scores={Dialog=1006}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.24"}]}
tellraw @s[scores={Dialog=1062}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.25"}]}
tellraw @s[scores={Dialog=1110}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.26"}]}
tellraw @s[scores={Dialog=1214}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.27"}]}
tellraw @s[scores={Dialog=1278}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.28"}]}
tellraw @s[scores={Dialog=1334}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.29"}]}
tellraw @s[scores={Dialog=1382}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.30"}]}
tellraw @s[scores={Dialog=1478}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.31"}]}
tellraw @s[scores={Dialog=1526}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.32"}]}
tellraw @s[scores={Dialog=1550}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.33"}]}
tellraw @s[scores={Dialog=1606}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.34"}]}
tellraw @s[scores={Dialog=1622}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.35"}]}
tellraw @s[scores={Dialog=1678}] {"translate":"chat.type.text","with":[{"text":"FVbico"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.36","with":[{"selector":"@s"}]}]}
execute if entity @s[scores={Dialog=1782}] as @e[tag=fvbico,tag=this_dialog] at @s run teleport @s ~ ~ ~ facing -1620 50 -481
execute if entity @s[scores={Dialog=1782}] run tag @e[tag=fvbico,tag=this_dialog] add walking
execute if entity @s[scores={Dialog=1783..1951}] as @e[tag=fvbico,tag=this_dialog] at @s run teleport @s ^ ^ ^0.2125
execute if entity @s[scores={Dialog=1951}] run tag @e[tag=fvbico,tag=this_dialog] add dead
scoreboard players set @s[scores={Dialog=1952}] MusicType 1
scoreboard players set @s[scores={Dialog=1952}] Music 0
tellraw @s[scores={Dialog=1952}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.37"}]}
tellraw @s[scores={Dialog=1976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.38"}]}
tellraw @s[scores={Dialog=2048}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.39"}]}
tellraw @s[scores={Dialog=2064}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.40"}]}
execute if entity @s[scores={Dialog=2104..}] at @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=2104}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.41"}]}
tellraw @s[scores={Dialog=2112}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.42"}]}
tellraw @s[scores={Dialog=2176}] {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.43"}]}
tellraw @s[scores={Dialog=2184}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee","color":"green"},{"translate":"medabots_server:dialog.other.ruins_in_b_fvbico_cleared.44"}]}
tag @s[scores={Dialog=2200}] remove dialog_other_ruins_in_b_fvbico_cleared
scoreboard players reset @s[scores={Dialog=2200}] DialogNr
scoreboard players set @s[scores={Dialog=2200}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog