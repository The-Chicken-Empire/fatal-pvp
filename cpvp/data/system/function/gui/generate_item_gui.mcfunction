#> system:gui/generate_item_gui
#
# @within system:gui/load


#helmet1
data modify storage gui_maker: input.addpage_enderchest.tag set value helmet1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/helmet/1/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/2/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/4/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/5/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/6/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/8/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/9/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/10/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/11/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/12/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/13/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/14/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/15/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/helmet/16/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 13b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest

#weapon1
data modify storage gui_maker: input.addpage_enderchest.tag set value weapon1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/weapon/1/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/2/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/3/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/4/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/5/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/6/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/7/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/8/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/9/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/13/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/17/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/18/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/weapon/120/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest

#boots1
data modify storage gui_maker: input.addpage_enderchest.tag set value boots1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/boots/1/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/2/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/3/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/4/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/5/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/8/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/9/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/10/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/12/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/13/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/14/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/15/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/16/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/boots/17/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 13b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest

#magic1
data modify storage gui_maker: input.addpage_enderchest.tag set value magic1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/magic/0/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/1/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/2/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/3/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/4/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/5/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/6/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/7/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/9/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/10/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/11/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/12/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/13/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/14/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 13b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/15/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 14b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/16/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 15b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/17/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 16b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/18/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 17b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 23b}] set value {components: {'minecraft:custom_name': '次のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'magic2'}", trigger_item: 1b}}}, count: 1, Slot: 23b, id: 'minecraft:arrow'}
function gui_maker:general/addpage_enderchest

#magic2
data modify storage gui_maker: input.addpage_enderchest.tag set value magic2
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 21b}] set value {components: {'minecraft:custom_name': '前のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'magic1'}", trigger_item: 1b}}}, count: 1, Slot: 21b, id: 'minecraft:arrow'}
function items:generate/magic/19/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/21/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/22/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/23/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/24/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/25/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/26/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/27/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/28/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/29/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/31/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/32/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/35/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/36/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 13b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/37/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 14b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/38/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 15b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/39/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 16b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/40/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 17b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 23b}] set value {components: {'minecraft:custom_name': '次のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'magic3'}", trigger_item: 1b}}}, count: 1, Slot: 23b, id: 'minecraft:arrow'}
function gui_maker:general/addpage_enderchest

#magic3
data modify storage gui_maker: input.addpage_enderchest.tag set value magic3
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 21b}] set value {components: {'minecraft:custom_name': '前のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'magic2'}", trigger_item: 1b}}}, count: 1, Slot: 21b, id: 'minecraft:arrow'}
function items:generate/magic/41/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/42/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/43/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/46/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/47/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/48/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/49/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/50/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/51/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/52/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/53/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/magic/54/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest

#perk1
data modify storage gui_maker: input.addpage_enderchest.tag set value perk1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/perk/1/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/2/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/3/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/5/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/6/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/7/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/8/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/9/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/10/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/11/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/12/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/13/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/14/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/15/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 13b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/16/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 14b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/17/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 15b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/18/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 16b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/19/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 17b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 23b}] set value {components: {'minecraft:custom_name': '次のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'perk2'}", trigger_item: 1b}}}, count: 1, Slot: 23b, id: 'minecraft:arrow'}
function gui_maker:general/addpage_enderchest

#perk2
data modify storage gui_maker: input.addpage_enderchest.tag set value perk2
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 21b}] set value {components: {'minecraft:custom_name': '前のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'perk1'}", trigger_item: 1b}}}, count: 1, Slot: 21b, id: 'minecraft:arrow'}
function items:generate/perk/20/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/22/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/23/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/24/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/25/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/26/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/27/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/28/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/29/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/30/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/31/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/32/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/33/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/34/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 13b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/35/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 14b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/36/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 15b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/37/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 16b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/38/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 17b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 23b}] set value {components: {'minecraft:custom_name': '次のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'perk3'}", trigger_item: 1b}}}, count: 1, Slot: 23b, id: 'minecraft:arrow'}
function gui_maker:general/addpage_enderchest

#perk3
data modify storage gui_maker: input.addpage_enderchest.tag set value perk3
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 21b}] set value {components: {'minecraft:custom_name': '前のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'perk2'}", trigger_item: 1b}}}, count: 1, Slot: 21b, id: 'minecraft:arrow'}
function items:generate/perk/39/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/41/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/perk/42/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest

#offhand1
data modify storage gui_maker: input.addpage_enderchest.tag set value offhand1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/offhand/1/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/2/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/3/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/4/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/5/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/6/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/7/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/8/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/9/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/10/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/11/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/12/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/13/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/14/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 13b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/15/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 14b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/16/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 15b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/17/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 16b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/offhand/18/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 17b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 23b}] set value {components: {'minecraft:custom_name': '次のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'offhand2'}", trigger_item: 1b}}}, count: 1, Slot: 23b, id: 'minecraft:arrow'}
function gui_maker:general/addpage_enderchest

#offhand2
data modify storage gui_maker: input.addpage_enderchest.tag set value offhand2
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
data modify storage gui_maker: input.addpage_enderchest.Items[{Slot: 21b}] set value {components: {'minecraft:custom_name': '前のページへ', 'minecraft:custom_data': {gui_maker: {trigger_function: "gui_maker:general/move_page_by_tag {tag:'offhand1'}", trigger_item: 1b}}}, count: 1, Slot: 21b, id: 'minecraft:arrow'}
function items:generate/offhand/19/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest

#leggings1
data modify storage gui_maker: input.addpage_enderchest.tag set value leggings1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/leggings/1/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/3/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/4/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/5/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/8/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/9/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/10/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/11/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/12/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/13/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/14/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/15/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/leggings/16/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest

#food1
data modify storage gui_maker: input.addpage_enderchest.tag set value food1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/food/1/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/food/2/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/food/3/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest

#gun1
data modify storage gui_maker: input.addpage_enderchest.tag set value gun1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/gun/1/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest

#chestplate1
data modify storage gui_maker: input.addpage_enderchest.tag set value chestplate1
data modify storage gui_maker: input.addpage_enderchest.Items set from storage cpvp:tmp gui.display
function items:generate/chestplate/2/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 0b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/3/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 1b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/4/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 2b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/6/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 3b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/8/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 4b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/9/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 5b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/10/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 6b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/12/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 7b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/13/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 8b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/14/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 9b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/15/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 10b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/16/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 11b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/17/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 12b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/18/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 13b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/19/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 14b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/20/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 15b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function items:generate/chestplate/21/generate
data modify storage cpvp:tmp gui.item set from block 0 0 0 Items[0]
data modify storage cpvp:tmp gui.item.Slot set value 16b
data modify storage gui_maker: input.addpage_enderchest.Items append from storage cpvp:tmp gui.item
function gui_maker:general/addpage_enderchest
