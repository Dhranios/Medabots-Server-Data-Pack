# Tell that an upgrade path is running
tellraw @s {"translate":"medabots_server:message.upgrade_path","color":"gold"}

summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory

# Run the upgrade path for every id:"medabots_server:"
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{id:"medabots_server:",version:1}}}].tag merge value {}
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}

# Increase version number
data modify entity @e[tag=inventory,limit=1,distance=..0.1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{version:1}}}].tag.medabots_server.version set value 2

execute as @e[tag=inventory,limit=1,distance=..0.1] run function medabots_server:update/upgrade_path/set_boxes
loot replace entity @s hotbar.0 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s inventory.18 9 mine -286 1 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s armor.feet 4 mine -286 0 -53 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s weapon.offhand 1 mine -287 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
setblock -286 1 -52 minecraft:stone
setblock -286 0 -53 minecraft:bedrock
setblock -287 0 -52 minecraft:bedrock