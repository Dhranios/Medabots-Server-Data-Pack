execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
scoreboard players operation @s[scores={Dialog=0}] DialogNr > @a[scores={DialogNr=0..}] DialogNr
scoreboard players add @s[scores={Dialog=0}] DialogNr 1
execute store result score #temp DialogNr run scoreboard players get @s DialogNr
execute as @e[tag=cutscene] if score @s DialogNr = #temp DialogNr run tag @s add this_dialog
scoreboard players add @s Dialog 1
advancement grant @s[scores={Dialog=1}] only medabots_server:story_progression/infinity samanthas_challenge
scoreboard players set @s[scores={Dialog=1}] MusicType 35
scoreboard players set @s[scores={Dialog=1}] Music 0
scoreboard players set @s[scores={Dialog=1}] Jukebox 0
execute if entity @s[scores={Dialog=1}] run function medabots_server:spawn_entities/cutscene/metabee
execute if entity @s[scores={Dialog=1}] positioned -452 55 0 run function medabots_server:spawn_entities/cutscene/samantha
execute if entity @s[scores={Dialog=1..}] at @e[tag=samantha,tag=this_dialog,limit=1] facing entity @s feet run teleport @e[tag=samantha,tag=this_dialog,limit=1] ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=1}] as @e[tag=metabee,tag=!medabot_model,tag=this_dialog,limit=1] at @s facing entity @e[tag=samantha,tag=this_dialog,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tellraw @s[scores={Dialog=1}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.1"}]}
tellraw @s[scores={Dialog=64}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.2"}]}
tellraw @s[scores={Dialog=80}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.3"}]}
tellraw @s[scores={Dialog=136}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.4"}]}
tellraw @s[scores={Dialog=160}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.5"}]}
tellraw @s[scores={Dialog=256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.6"}]}
tellraw @s[scores={Dialog=264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.7"}]}
tellraw @s[scores={Dialog=352}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.8"}]}
tellraw @s[scores={Dialog=368}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.9"}]}
tellraw @s[scores={Dialog=424}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.10"}]}
tellraw @s[scores={Dialog=440}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.11"}]}
tellraw @s[scores={Dialog=464}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.12"}]}
tellraw @s[scores={Dialog=488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.13"}]}
tellraw @s[scores={Dialog=560}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.14"}]}
tellraw @s[scores={Dialog=616}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.15"}]}
tellraw @s[scores={Dialog=640}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.16","with":[{"selector":"@s"}]}]}
tellraw @s[scores={Dialog=672}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.17"}]}
tellraw @s[scores={Dialog=704}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.18"}]}
tellraw @s[scores={Dialog=760}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.19"}]}
tellraw @s[scores={Dialog=776}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.20"}]}
tellraw @s[scores={Dialog=800}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.21"}]}
tellraw @s[scores={Dialog=840}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.22"}]}
tellraw @s[scores={Dialog=936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.23"}]}
tellraw @s[scores={Dialog=944}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.24"}]}
tellraw @s[scores={Dialog=992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.25"}]}
tellraw @s[scores={Dialog=1016}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.26"}]}
tellraw @s[scores={Dialog=1032}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.27"}]}
tellraw @s[scores={Dialog=1128}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.28"}]}
tellraw @s[scores={Dialog=1152}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.29"}]}
tellraw @s[scores={Dialog=1192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.30"}]}
tellraw @s[scores={Dialog=1216}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.31"}]}
tellraw @s[scores={Dialog=1256}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.32"}]}
tellraw @s[scores={Dialog=1264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.33"}]}
tellraw @s[scores={Dialog=1360}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.34"}]}
tellraw @s[scores={Dialog=1400}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.35"}]}
tellraw @s[scores={Dialog=1408}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.36"}]}
tellraw @s[scores={Dialog=1488}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.37"}]}
tellraw @s[scores={Dialog=1536}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.38"}]}
tellraw @s[scores={Dialog=1552}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.39"}]}
tellraw @s[scores={Dialog=1600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.40"}]}
tellraw @s[scores={Dialog=1632}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.41"}]}
tellraw @s[scores={Dialog=1664}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.42"}]}
tellraw @s[scores={Dialog=1688}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.43"}]}
tellraw @s[scores={Dialog=1712}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.44"}]}
tellraw @s[scores={Dialog=1800}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.45"}]}
tellraw @s[scores={Dialog=1848}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.46"}]}
tellraw @s[scores={Dialog=1880}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.47"}]}
tellraw @s[scores={Dialog=1888}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.48"}]}
tellraw @s[scores={Dialog=1944}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.49"}]}
tellraw @s[scores={Dialog=1976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.50"}]}
tellraw @s[scores={Dialog=1992}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.51"}]}
tellraw @s[scores={Dialog=2016}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.52"}]}
tellraw @s[scores={Dialog=2048}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.53"}]}
tellraw @s[scores={Dialog=2072}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.54"}]}
tellraw @s[scores={Dialog=2080}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.55"}]}
tellraw @s[scores={Dialog=2176}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.56"}]}
tellraw @s[scores={Dialog=2192}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.57"}]}
tellraw @s[scores={Dialog=2200}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.58"}]}
tellraw @s[scores={Dialog=2264}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.59"}]}
tellraw @s[scores={Dialog=2272}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.60"}]}
tellraw @s[scores={Dialog=2304}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.61"}]}
tellraw @s[scores={Dialog=2328}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.62"}]}
tellraw @s[scores={Dialog=2344}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.63"}]}
tellraw @s[scores={Dialog=2376}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.64"}]}
tellraw @s[scores={Dialog=2384}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.65"}]}
tellraw @s[scores={Dialog=2400}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.66"}]}
tellraw @s[scores={Dialog=2432}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.67"}]}
tellraw @s[scores={Dialog=2440}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.68"}]}
tellraw @s[scores={Dialog=2488}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.69"}]}
tellraw @s[scores={Dialog=2544}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.70"}]}
tellraw @s[scores={Dialog=2560}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.71"}]}
tellraw @s[scores={Dialog=2600}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.72"}]}
tellraw @s[scores={Dialog=2680}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.73"}]}
tellraw @s[scores={Dialog=2752}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.74"}]}
tellraw @s[scores={Dialog=2784}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.75"}]}
tellraw @s[scores={Dialog=2816}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.76"}]}
tellraw @s[scores={Dialog=2936}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.77"}]}
tellraw @s[scores={Dialog=2968}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.78"}]}
tellraw @s[scores={Dialog=2976}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.79"}]}
tellraw @s[scores={Dialog=2996}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.80"}]}
tellraw @s[scores={Dialog=3060}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.81"}]}
tellraw @s[scores={Dialog=3076}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.82"}]}
tellraw @s[scores={Dialog=3100}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.83"}]}
tellraw @s[scores={Dialog=3132}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.84"}]}
tellraw @s[scores={Dialog=3180}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.85"}]}
tellraw @s[scores={Dialog=3228}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.86"}]}
tellraw @s[scores={Dialog=3276}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.87"}]}
tellraw @s[scores={Dialog=3364}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.88"}]}
tellraw @s[scores={Dialog=3380}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.89"}]}
tellraw @s[scores={Dialog=3452}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.90"}]}
tellraw @s[scores={Dialog=3476}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.91"}]}
tellraw @s[scores={Dialog=3564}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.92"}]}
tellraw @s[scores={Dialog=3580}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.93"}]}
tellraw @s[scores={Dialog=3612}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.94"}]}
tellraw @s[scores={Dialog=3676}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.95"}]}
tellraw @s[scores={Dialog=3716}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.samantha"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.96"}]}
tellraw @s[scores={Dialog=3724}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.97"}]}
tellraw @s[scores={Dialog=3788}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.98"}]}
tellraw @s[scores={Dialog=3812}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.99"}]}
tellraw @s[scores={Dialog=3820}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.100"}]}
tellraw @s[scores={Dialog=3848}] {"translate":"chat.type.text","with":[{"selector":"@s"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.101"}]}
tellraw @s[scores={Dialog=3872}] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.metabee"},{"translate":"medabots_server:dialog.infinity.samanthas_challenge.102"}]}
tag @s[scores={Dialog=3912}] remove dialog_infinity_samanthas_challenge
scoreboard players set @s[scores={Dialog=3912}] MusicType 1
scoreboard players set @s[scores={Dialog=3912}] Music 0
scoreboard players reset @s[scores={Dialog=3912}] DialogNr
scoreboard players set @s[scores={Dialog=3912}] Dialog 0
scoreboard players reset #temp DialogNr
tag @e[tag=this_dialog] remove this_dialog