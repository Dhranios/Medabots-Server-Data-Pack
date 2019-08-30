# Tell that an upgrade path is running
tellraw @s {"translate":"medabots_server:message.upgrade_path","color":"gold"}

# Run the upgrade path for every id:"medabots_server:"
data modify entity @s Inventory[{tag:{medabots_server:{id:"medabots_server:",version:1}}}].tag merge value {}
data modify entity @s Inventory[{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @s Inventory[{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @s Inventory[{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @s Inventory[{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @s Inventory[{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @s EnderItems[{tag:{medabots_server:{id:"medabots_server:",version:1}}}].tag merge value {}
data modify entity @s EnderItems[{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @s EnderItems[{tag:{medabots_server:{part:"tinpet",items:{head:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @s EnderItems[{tag:{medabots_server:{part:"tinpet",items:{right_arm:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @s EnderItems[{tag:{medabots_server:{part:"tinpet",items:{left_arm:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}
data modify entity @s EnderItems[{tag:{medabots_server:{part:"tinpet",items:{legs:{tag:{medabots_server:{id:"medabots_server:",version:1}}}}}}}].tag merge value {}

# Increase version number
data modify entity @s Inventory[{tag:{medabots_server:{version:1}}}].tag.medabots_server.version set value 2
data modify entity @s EnderItems[{tag:{medabots_server:{version:1}}}].tag.medabots_server.version set value 2