# Initiazing scores and tags for new entities
execute if entity @s[tag=!marked] run function medabots_server:mark_entities

# Functions that run on every entity that is in combat
execute if entity @s[tag=hostile] run function medabots_server:any_hostile

# Functions that run on every armor stand
execute if entity @s[type=minecraft:armor_stand] run function medabots_server:any_armor_stand

# Functions that run on every item
execute if entity @s[type=minecraft:item] run function medabots_server:any_item

# Functions that run on every Rubberobo
execute if entity @s[tag=rubberobo,nbt={HurtTime:5s}] unless entity @s[scores={Stage=1..}] run function medabots_server:entities/rubberobo/caught
execute if entity @s[tag=rubberobo,scores={Stage=1..}] run function medabots_server:entities/rubberobo

# Functions that run on every area effect cloud
execute if entity @s[type=minecraft:area_effect_cloud] run function medabots_server:any_cloud

# Functions that run on every snowball
execute if entity @s[type=minecraft:snowball] run function medabots_server:any_snowball

# Make the guards do things
execute if entity @s[type=minecraft:creeper,tag=guard] run function medabots_server:entities/guard

# Make the cannons do things
execute if entity @s[type=minecraft:zombie,tag=cannon] run function medabots_server:entities/cannon

# Functions that run on every arrow
execute if entity @s[type=minecraft:arrow] run function medabots_server:any_arrow

# Prevent tnt (minecarts) from destroying terrain
execute if entity @s[type=minecraft:tnt] run function medabots_server:anti_cheating/tnt
execute if entity @s[type=minecraft:tnt_minecart] run function medabots_server:anti_cheating/tnt

# Cutscene entities
execute if entity @s[tag=cutscene] run function medabots_server:dialog/main

# All shops
execute if entity @s[tag=shop] run function medabots_server:shopping/main

# Prevent zombies from converting to drowned
data merge entity @s[type=minecraft:zombie,nbt=!{DrownedConversionTime:-1,InWaterTime:-1}] {DrownedConversionTime:-1,InWaterTime:-1}
data merge entity @s[type=minecraft:husk,nbt=!{DrownedConversionTime:-1,InWaterTime:-1}] {DrownedConversionTime:-1,InWaterTime:-1}
data merge entity @s[type=minecraft:wandering_trader,nbt={DespawnDelay:2}] {DespawnDelay:2147483647}

# Talk
execute if entity @s[tag=rubberobo,tag=talk] unless entity @s[scores={Stage=1..}] run function medabots_server:dialog/random_rubberobo
execute if entity @s[tag=select_corps,tag=talk] run function medabots_server:dialog/random_select_corps
tag @s[tag=talked,tag=!talk] remove talked
tag @s[tag=!talked,tag=talk] add talked
tag @s[tag=talk] remove talk