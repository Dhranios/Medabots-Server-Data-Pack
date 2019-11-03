# Tick down timer
scoreboard players remove @s IneffectiveTime 1

# Disable seemingly random part
tag @s[scores={IneffectiveTime=590..,MedaforceTimer=0..1},tag=!ineffective_right,tag=!ineffective_head,tag=!ineffective_left] add ineffective_left
tag @s[scores={IneffectiveTime=590..,MedaforceTimer=2..3},tag=!ineffective_right,tag=!ineffective_head,tag=!ineffective_left] add ineffective_right
tag @s[scores={IneffectiveTime=590..,MedaforceTimer=4..5},tag=!ineffective_right,tag=!ineffective_head,tag=!ineffective_left] add ineffective_head

# Enable the parts again if the effect ends
tag @s[scores={IneffectiveTime=0}] remove ineffective_left
tag @s[scores={IneffectiveTime=0}] remove ineffective_right
tag @s[scores={IneffectiveTime=0}] remove ineffective_head
scoreboard players reset @s[scores={IneffectiveTime=0}] IneffectiveTime