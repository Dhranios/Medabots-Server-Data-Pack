execute if entity @s[scores={Dialog=2}] run playsound medabots_server:entity.mr_referee.intro.3 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=2}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.3.1"}]}
execute if entity @s[scores={Dialog=50}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.3.2"}]}
execute if entity @s[scores={Dialog=140}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.3.3"}]}
execute if entity @s[scores={Dialog=190}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.3.4"}]}
tag @s[scores={Dialog=220}] add done
scoreboard players set @s[scores={Dialog=220}] Dialog 0