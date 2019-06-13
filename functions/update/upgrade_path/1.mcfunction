# Tell that an upgrade path is running
tellraw @s {"translate":"medabots_server:message.upgrade_path","color":"gold"}

# Run the upgrade path for every id:""
#execute if entity run @s[nbt={Inventory:[{tag:{medabots_server:{id:"",version:1}}}]}] function medabots_server:other/upgrade_path/1/