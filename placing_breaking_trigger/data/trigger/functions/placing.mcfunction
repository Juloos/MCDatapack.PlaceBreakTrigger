execute store success score @s trigger.tmp if entity @s[tag=disabled_placing]
execute if entity @s[tag=disabled_breaking] run tellraw @s ["",{"text":"Cannot trigger placing : target is breaking-disabled","color":"gold"}]
execute unless entity @s[tag=disabled_breaking] if score @s trigger.tmp matches 0 run tag @s add disabled_placing
execute unless entity @s[tag=disabled_breaking] if score @s trigger.tmp matches 0 run tellraw @s ["",{"text":"Cannot place blocks anymore","color":"red"}]
execute unless entity @s[tag=disabled_breaking] if score @s trigger.tmp matches 1 run tag @s remove disabled_placing
execute unless entity @s[tag=disabled_breaking] if score @s trigger.tmp matches 1 run tellraw @s ["",{"text":"Can now place blocks","color":"green"}]
execute unless entity @s[tag=disabled_breaking] if score @s trigger.tmp matches 1 run gamemode survival @s