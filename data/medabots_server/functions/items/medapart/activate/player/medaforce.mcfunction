# Activate charged medaforce
tag @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_alien_medaforce"}}}}] add random_change
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_kuwagata_medaforce"}}}}] Medaforce -2
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_kabuto_medaforce"}}}}] Medaforce -3
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_mermaid_medaforce"}}}}] Medaforce -4
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_ghost_medaforce"}}}}] Medaforce -5
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_monkey_medaforce"}}}}] Medaforce -6
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_spider_medaforce"}}}}] Medaforce -7
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_question_medaforce"}}}}] Medaforce -8
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_chameleon_medaforce"}}}}] Medaforce -9
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_knight_medaforce"}}}}] Medaforce -10
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_unicorn_medaforce"}}}}] Medaforce -11
scoreboard players set @s[nbt={SelectedItem:{tag:{medabots_server:{id:"medabots_server:activate_devil_medaforce"}}}}] Medaforce -12

# Randomize alien medaforce
execute if entity @s[tag=random_change] run loot spawn ~ ~ ~ loot medabots_server:gameplay/random_change
execute if entity @s[tag=random_change] store result score @s Medaforce as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run data get entity @s Item.tag.Option
scoreboard players operation @s[tag=random_change] Medaforce *= #-1 Constants
execute if entity @s[tag=random_change] as @e[type=minecraft:item,distance=..0.7] if data entity @s Item.tag.Option run kill @s
