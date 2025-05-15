data modify storage disenchanter:main accumulator set from entity @s Item.components.minecraft:enchantments
data remove entity @s Item.components.minecraft:enchantments
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:enchanted_book"}, Tags:["PENDING"]}
execute as @e[limit=1, tag=PENDING] run function disenchanter:enchant
execute if block ~ ~ ~ minecraft:lectern[facing=north] run return run setblock ~ ~ ~ minecraft:lectern[facing=north]
execute if block ~ ~ ~ minecraft:lectern[facing=south] run return run setblock ~ ~ ~ minecraft:lectern[facing=south]
execute if block ~ ~ ~ minecraft:lectern[facing=east] run return run setblock ~ ~ ~ minecraft:lectern[facing=east]
execute if block ~ ~ ~ minecraft:lectern[facing=west] run return run setblock ~ ~ ~ minecraft:lectern[facing=west]
