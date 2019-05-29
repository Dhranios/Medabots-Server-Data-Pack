# By: shraavan97
# 8 August 2017
# 
# GUI Detection - Reacts on item clicked via /clear
# Returns: Value to guiPage scoreboard
#
# FILE RAN FROM lobby:gui/detect_item

# Note: File specific for btn for easy access to changes

#~ Home Item
execute unless entity @s[nbt={Inventory:[{tag:{gui:{home:1b}}}]}] run function lobby:gui/actions/home