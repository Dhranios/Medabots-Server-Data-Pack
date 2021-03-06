# Save which medapart is used, if it changes form
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"anti_fly"}}}}] run function medabots_server:items/medapart/anti_fly/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"beam"}}}}] run function medabots_server:items/medapart/beam/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"break"}}}}] run function medabots_server:items/medapart/break/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"falling"}}}}] run function medabots_server:items/medapart/falling/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"gatling"}}}}] run function medabots_server:items/medapart/gatling/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"hammer"}}}}] run function medabots_server:items/medapart/hammer/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"laser"}}}}] run function medabots_server:items/medapart/laser/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"melt"}}}}] run function medabots_server:items/medapart/melt/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"missile"}}}}] run function medabots_server:items/medapart/missile/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"napalm"}}}}] run function medabots_server:items/medapart/napalm/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"press"}}}}] run function medabots_server:items/medapart/press/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"rifle"}}}}] run function medabots_server:items/medapart/rifle/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"sacrifice"}}}}] run function medabots_server:items/medapart/sacrifice/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"sword"}}}}] run function medabots_server:items/medapart/sword/save_id
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{move:"transform"}}}}] run function medabots_server:items/medapart/transform/save_id/player

execute store result score @s MedapartPower run data get entity @s SelectedItem.tag.medabots_server.power
execute store result score @s MedapartSpeed run data get entity @s SelectedItem.tag.medabots_server.charge

# Activate left arm
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"anti_fly"}}}}] MedapartType 1
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"anti_tank"}}}}] MedapartType 2
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"auxiliary_charge"}}}}] MedapartType 3
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"break"}}}}] MedapartType 4
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"bug"}}}}] MedapartType 5
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"confuse"}}}}] MedapartType 6
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"defense"}}}}] MedapartType 7
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"destroy"}}}}] MedapartType 8
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"falling"}}}}] MedapartType 9
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"freeze"}}}}] MedapartType 10
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"gatling"}}}}] MedapartType 11
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"guard_gravity"}}}}] MedapartType 12
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"guard_gunpowder"}}}}] MedapartType 13
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"guard_optical"}}}}] MedapartType 14
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"hammer"}}}}] MedapartType 15
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"heal"}}}}] MedapartType 16
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"hide"}}}}] MedapartType 17
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"hold"}}}}] MedapartType 18
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"ineffective"}}}}] MedapartType 19
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"infect"}}}}] MedapartType 20
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"laser"}}}}] MedapartType 21
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"medaforce_control"}}}}] MedapartType 22
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"melee_trap"}}}}] MedapartType 23
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"melt"}}}}] MedapartType 24
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"missile"}}}}] MedapartType 25
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"napalm"}}}}] MedapartType 26
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"no_defend"}}}}] MedapartType 27
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"paralyze"}}}}] MedapartType 28
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"perfect_guard"}}}}] MedapartType 29
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"press"}}}}] MedapartType 30
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"repair"}}}}] MedapartType 31
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"rifle"}}}}] MedapartType 32
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"sacrifice"}}}}] MedapartType 33
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"scout"}}}}] MedapartType 34
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"shooting_trap"}}}}] MedapartType 35
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"status_clear"}}}}] MedapartType 36
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"sword"}}}}] MedapartType 37
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"transform"}}}}] MedapartType 38
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"wave"}}}}] MedapartType 39
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{move:"beam"}}}}] MedapartType 40