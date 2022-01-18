execute in minirailways:game unless entity @a[x=0] run function minirailways:start/reset_map
execute in minirailways:game run tp @s 0 17 0
execute in minirailways:game positioned 0 15 0 run function hub:main/death/spawnpoint
give @s written_book{pages:['["",{"text":"How to play Mini Railways","underlined":true},{"text":"\\nIn Mini Railways your goal is to move items from the source to the pickup of the same color. You accomplish this using hopper minecarts. For every source/pickup pair you recieve 8 emeralds you can spend in the shop on various items.","color":"reset"}]'],title:"How To Play",author:Devon7925,display:{Lore:["A description of how to play Mini Railways."]}}
team join mr.Team @s