# Initiazing scores and tags for new entities
execute if entity @s[tag=!marked] run function medabots_server:mark_entities

# Functions that run on every entity that is in combat
execute if entity @s[tag=hostile] run function medabots_server:any_hostile

# Functions that run on every armor stand
execute if entity @s[type=minecraft:armor_stand] run function medabots_server:any_armor_stand

# Functions that run on every item
execute if entity @s[type=minecraft:item] run function medabots_server:any_item

# Functions that run on every Rubberobo
execute if entity @s[tag=rubberobo] unless entity @s[scores={Stage=1..}] run function medabots_server:other/rubberobo_caught
execute if entity @s[tag=rubberobo,scores={Stage=1..}] run function medabots_server:stage/rubberobo

# Functions that run on every area effect cloud
execute if entity @s[type=minecraft:area_effect_cloud] run function medabots_server:any_cloud

# Make the press attack do something
execute if entity @s[type=minecraft:snowball,tag=press] run function medabots_server:medaparts/press_attack

# Make the kuwagata attack do something
execute if entity @s[type=minecraft:snowball,tag=cut_space] run function medabots_server:medaparts/cut_space

# Make the guards do things
execute if entity @s[type=minecraft:creeper,tag=guard] run function medabots_server:stage/guard

# Make the cannons do things
execute if entity @s[type=minecraft:zombie,tag=cannon] run function medabots_server:stage/cannon

# Functions that run on every arrow
execute if entity @s[type=minecraft:arrow] run function medabots_server:any_arrow

# Prevent tnt (minecarts) from destroying terrain
execute if entity @s[type=minecraft:tnt] run function medabots_server:anti_cheating/tnt
execute if entity @s[type=minecraft:tnt_minecart] run function medabots_server:anti_cheating/tnt

# Prevent zombies from converting to drowned
execute if entity @s[type=minecraft:zombie,nbt=!{DrownedConversionTime:-1,InWaterTime:-1}] run data merge entity @s {DrownedConversionTime:-1,InWaterTime:-1}

# Talk
execute if entity @s[tag=rubberobo,tag=talk] unless entity @s[scores={Stage=1..}] run function medabots_server:dialog/random_rubberobo
execute if entity @s[tag=select_corps,tag=talk] run function medabots_server:dialog/random_select_corps
tag @s[tag=talked,tag=!talk] remove talked
tag @s[tag=!talked,tag=talk] add talked
tag @s[tag=talk] remove talk