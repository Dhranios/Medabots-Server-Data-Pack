summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
execute as @e[tag=inventory,limit=1] run function medabots_server:items/loot_container/set_boxes
execute if block -286 0 -52 minecraft:shulker_box{Items:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]} run data remove block -286 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
execute if block -286 1 -52 minecraft:shulker_box{Items:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]} run data remove block -286 1 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
execute if block -287 0 -52 minecraft:shulker_box{Items:[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}]} run data remove block -287 0 -52 Items[{tag:{medabots_server:{id:"medabots_server:loot_container"}}}].tag.display.Lore[3]
loot replace entity @s hotbar.0 mine -286 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s inventory.18 9 mine -286 1 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
loot replace entity @s weapon.offhand 1 mine -287 0 -52 minecraft:golden_pickaxe{phi:{drop_contents:true}}
setblock -286 0 -52 minecraft:bedrock
setblock -286 1 -52 minecraft:stone
setblock -287 0 -52 minecraft:bedrock
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"accelerator"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/accelerator
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"action_floor"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/action_floor
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"alarm"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/alarm
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"algae"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/algae
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"balloon_bomb"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/balloon_bomb
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"bomb"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/bomb
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"cannon"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/cannon
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"drawbridge"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/drawbridge
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"fan"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/fan
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"gas_floor"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/gas_floor
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"glass"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/glass
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"guard"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/guard
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"hammer_punch"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/hammer_punch
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"hole"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/hole
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"ice_block"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/ice_block
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"jammy"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/jammy
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"laser_trap"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/laser_trap
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"mirror"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/mirror
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"mission"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/mission
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"press_wall"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/press_wall
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"raft"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/raft
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"rubberobo"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/rubberobo
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"spring_wall"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/spring_wall
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"stone"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/stone
execute if entity @e[distance=..0.1,nbt={Item:{tag:{medabots_server:{id:"medabots_server:stage_build_item",type:"whirlpool"}}}}] run function medabots_server:items/obtained_special_item/stage_build_item/whirlpool