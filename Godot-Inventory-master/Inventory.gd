extends GridContainer;
const ItemClass = preload("Item.gd");
const ItemSlotClass = preload("res://Godot-Inventory-master/ItemSlot.gd");

const slotTexture = preload("res://Godot-Inventory-master/images/skil.png");

#form array of images that can be called and created inside a dictionary
const itemImages = [
	#Item 0
	preload("res://Godot-Inventory-master/images/Ac_Ring05.png"),
	#Item 1
	preload("res://Godot-Inventory-master/images/A_Armor05.png"),
	#Item 2
	preload("res://Godot-Inventory-master/images/A_Armour02.png"),
	#Item 3
	preload("res://Godot-Inventory-master/images/A_Shoes03.png"),
	#Item 4
	preload("res://Godot-Inventory-master/images/C_Elm03.png"),
	#Item 5
	preload("res://Godot-Inventory-master/images/E_Wood02.png"),
	#Item 6
	preload("res://Godot-Inventory-master/images/P_Red02.png"),
	#Item 7
	preload("res://Godot-Inventory-master/images/W_Sword001.png")
];

#The dictionary that determines what is made in game
const itemDictionary = {
	0: {
		"itemName": "Shoe",
		"itemIcon": itemImages[3]
	},
	1: {
		"itemName": "Sword",
		"itemIcon": itemImages[7]
	},
	2: {
		"itemName": "Iron Ring",
		"itemIcon": itemImages[0]
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
	
	for i in range(7):
		var slot = ItemSlotClass.new(i);
		slotList.append(slot);
		add_child(slot);
	pass

func _item_found(foundItem):
	slotList[foundItem].setItem(itemList[foundItem]);

func _on_Button_pressed():
	_item_found(0);
