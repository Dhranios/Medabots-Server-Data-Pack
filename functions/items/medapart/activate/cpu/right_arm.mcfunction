execute store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute as @e[scores={MedabotNr=0..},tag=right_arm] if score @s MedabotNr = #temp MedabotNr run tag @s add this_medabot
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"anti_fly"}}}]}] run scoreboard players set @s MedapartType 1
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"anti_tank"}}}]}] run scoreboard players set @s MedapartType 2
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"auxilary_charge"}}}]}] run scoreboard players set @s MedapartType 3
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"break"}}}]}] run scoreboard players set @s MedapartType 4
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"bug"}}}]}] run scoreboard players set @s MedapartType 5
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"confuse"}}}]}] run scoreboard players set @s MedapartType 6
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"defense"}}}]}] run scoreboard players set @s MedapartType 7
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"destroy"}}}]}] run scoreboard players set @s MedapartType 8
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"falling"}}}]}] run scoreboard players set @s MedapartType 9
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"freeze"}}}]}] run scoreboard players set @s MedapartType 10
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"gatling"}}}]}] run scoreboard players set @s MedapartType 11
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"guard_gravity"}}}]}] run scoreboard players set @s MedapartType 12
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"guard_gunpowder"}}}]}] run scoreboard players set @s MedapartType 13
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"guard_optical"}}}]}] run scoreboard players set @s MedapartType 14
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"hammer"}}}]}] run scoreboard players set @s MedapartType 15
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"heal"}}}]}] run scoreboard players set @s MedapartType 16
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"hide"}}}]}] run scoreboard players set @s MedapartType 17
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"hold"}}}]}] run scoreboard players set @s MedapartType 18
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"ineffective"}}}]}] run scoreboard players set @s MedapartType 19
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"infect"}}}]}] run scoreboard players set @s MedapartType 20
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"laser"}}}]}] run scoreboard players set @s MedapartType 21
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"medaforce_control"}}}]}] run scoreboard players set @s MedapartType 22
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"melee_trap"}}}]}] run scoreboard players set @s MedapartType 23
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"melt"}}}]}] run scoreboard players set @s MedapartType 24
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"missile"}}}]}] run scoreboard players set @s MedapartType 25
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"napalm"}}}]}] run scoreboard players set @s MedapartType 26
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"no_defend"}}}]}] run scoreboard players set @s MedapartType 27
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"paralyze"}}}]}] run scoreboard players set @s MedapartType 28
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"perfect_guard"}}}]}] run scoreboard players set @s MedapartType 29
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"press"}}}]}] run scoreboard players set @s MedapartType 30
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"repair"}}}]}] run scoreboard players set @s MedapartType 31
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"rifle"}}}]}] run scoreboard players set @s MedapartType 32
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"sacrifice"}}}]}] run scoreboard players set @s MedapartType 33
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"scout"}}}]}] run scoreboard players set @s MedapartType 34
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"shooting_trap"}}}]}] run scoreboard players set @s MedapartType 35
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"status_clear"}}}]}] run scoreboard players set @s MedapartType 36
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"sword"}}}]}] run scoreboard players set @s MedapartType 37
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"transform"}}}]}] run scoreboard players set @s MedapartType 38
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"wave"}}}]}] run scoreboard players set @s MedapartType 39
scoreboard players set @s Time 20
scoreboard players reset #temp MedabotNr
tag @e[tag=this_medabot,limit=1] remove this_medabot