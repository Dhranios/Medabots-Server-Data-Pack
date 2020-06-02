# Initiazing scores and tags for new entities
execute if entity @s[tag=!marked] run function medabots_server:main/mark_entities

# Functions that run on every entity that is in combat
execute if entity @s[tag=hostile] run function medabots_server:main/hostiles

# Functions that run on every armor stand
execute if entity @s[type=minecraft:armor_stand] run function medabots_server:main/armor_stands

# Functions that run on every item
execute if entity @s[type=minecraft:item] run function medabots_server:main/items

# Functions that run on every arrow
execute if entity @s[type=minecraft:arrow] run function medabots_server:main/arrows

# Functions that run on every area effect cloud
execute if entity @s[type=minecraft:area_effect_cloud] run function medabots_server:main/area_effect_clouds

# Functions that run on every ghast
execute if entity @s[type=minecraft:ghast] run function medabots_server:main/ghasts

# Functions that run on every topman
execute if entity @s[type=minecraft:cave_spider,tag=topman] run function medabots_server:entities/topman

# Functions that run on every topmaniac
execute if entity @s[type=minecraft:spider,tag=topmaniac] run function medabots_server:entities/topmaniac

# Functions that run on every snowball
execute if entity @s[type=minecraft:snowball] run function medabots_server:main/snowballs

# Functions that run on every Rubberobo
execute if entity @s[tag=rubberobo,nbt={HurtTime:1s}] unless entity @s[scores={Stage=1..}] run function medabots_server:entities/rubberobo/caught
execute if entity @s[tag=rubberobo,scores={Stage=1..},tag=!disabled] run function medabots_server:entities/rubberobo

# Make Medabots do things
execute if entity @s[type=minecraft:skeleton,tag=medabot] run function medabots_server:entities/medabot

# Make the guards do things
execute if entity @s[type=minecraft:creeper,tag=guard] run function medabots_server:entities/guard

# Make the cannons do things
execute if entity @s[type=minecraft:husk,tag=cannon] run function medabots_server:entities/cannon

# Make the jammy do things
execute if entity @s[type=minecraft:pig,tag=jammy,tag=!disabled] run function medabots_server:blocks/jammy

# Prevent tnt (minecarts) from destroying terrain
execute if entity @s[type=minecraft:tnt] run function medabots_server:anti_cheating/tnt
execute if entity @s[type=minecraft:tnt_minecart] run function medabots_server:anti_cheating/tnt

# Cutscene entities
execute if entity @s[tag=cutscene] run function medabots_server:dialog/entity

# All shops
execute if entity @s[tag=shop] run function medabots_server:shopping/main

# Prevent zombies from converting to drowned
data merge entity @s[type=minecraft:zombie,nbt=!{DrownedConversionTime:-1,InWaterTime:-1}] {DrownedConversionTime:-1,InWaterTime:-1}
data merge entity @s[type=minecraft:husk,nbt=!{DrownedConversionTime:-1,InWaterTime:-1}] {DrownedConversionTime:-1,InWaterTime:-1}
data merge entity @s[type=minecraft:wandering_trader,nbt={DespawnDelay:2}] {DespawnDelay:2147483647}
data merge entity @s[type=minecraft:trader_llama,nbt={DespawnDelay:2}] {DespawnDelay:2147483647}

# Talk
execute if entity @s[tag=rubberobo,tag=talk] unless entity @s[scores={Stage=1..}] run function medabots_server:dialog/random_rubberobo
execute if entity @s[tag=select_corps,tag=talk] run function medabots_server:dialog/random_select_corps
tag @s[tag=talked,tag=!talk] remove talked
tag @s[tag=!talked,tag=talk] add talked
tag @s[tag=talk] remove talk