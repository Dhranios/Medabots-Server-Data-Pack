execute if entity @s[scores={Dialog=2}] run playsound medabots_server:entity.mr_referee.intro.2 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=2}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.2.1"}]}
execute if entity @s[scores={Dialog=50}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.2.2"}]}
execute if entity @s[scores={Dialog=130}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.2.3"}]}
execute if entity @s[scores={Dialog=170}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.2.4"}]}
tag @s[scores={Dialog=200}] add done