extends GridContainer;
const ItemClass = preload("Item.gd");
const ItemSlotClass = preload("res://Godot-Inventory-master/ItemSlot.gd");

const slotTexture = preload("res://Godot-Inventory-master/images/skil.png");

#form array of images that can be called and created inside a dictionary
const itemImages = [
	#Item 0
	preload("res://Godot-Inventory-master/images/Coffee Cup Small.png"),
	#Item 1
	preload("res://Godot-Inventory-master/images/Water Pot.png"),
	#Item 2
	preload("res://Godot-Inventory-master/images/Coffee Pot.png"),
];

#The dictionary that determines what is made in game
const itemDictionary = {
	0: {
		"itemName": "Coffee Cup",
		"itemIcon": itemImages[0]
	},
	1: {
		"itemName": "Coffee Pot",
		"itemIcon": itemImages[1]
	},
	2: {
		"itemName": "Water Pot",
		"itemIcon": itemImages[2]
	},
};

var slotList = Array();
var itemList = Array();

var holdingItem = null;

func _ready():
	for item in itemDictionary:
		var itemName = itemDictionary[item].itemName;
		var itemIcon = itemDictionary[item].itemIcon;
		itemList.append(ItemClass.new(itemName, itemIcon, null));
	
	for i in range(3):
		var slot = ItemSlotClass.new(i);
		slotList.append(slot);
		add_child(slot);
	pass

func _item_found(foundItem):
	slotList[foundItem].setItem(itemList[foundItem]);

func _on_Button_pressed():
	_item_found(0);
