extends GridContainer;
const ItemClass = preload("Item.gd");
const ItemSlotClass = preload("res://Godot-Inventory-master/ItemSlot.gd");

const slotTexture = preload("res://Godot-Inventory-master/images/skil.png");

onready var WaterPot = get_node("../../../Water Pot");
onready var CoffeePot = get_node("../../../Coffee Pot");
onready var CoffeeCan = get_node("../../../Coffee Bean Can");

#form array of images that can be called and created inside a dictionary
const itemImages = [
	#Item 0
	preload("res://Godot-Inventory-master/images/Coffee Cup Small.png"),
	#Item 1
	preload("res://Godot-Inventory-master/images/Coffee Pot Small.png"),
	#Item 2
	preload("res://Godot-Inventory-master/images/Water Pot Small.png"),
	#Item 3
	preload("res://Godot-Inventory-master/images/bean.png")
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
	3: {
		"itemName": "Coffee Bean Can",
		"itemIcon": itemImages[3]
	}
};

var slotList = Array();
var itemList = Array();

var holdingItem = null;

func _ready():
	for item in itemDictionary:
		var itemName = itemDictionary[item].itemName;
		var itemIcon = itemDictionary[item].itemIcon;
		itemList.append(ItemClass.new(itemName, itemIcon, null));
	
	for i in range(4):
		var slot = ItemSlotClass.new(i);
		slotList.append(slot);
		add_child(slot);
	pass

func _on_Coffee_Cup_pressed():
	_item_found(0, 0);

func _on_Coffee_Bean_Can_pressed():
	_item_found(3, 3);
	CoffeeCan.visible = false;

func _on_Water_Pot_pressed():
	_item_found(2, 2);
	WaterPot.visible = false;
	

func _on_Coffee_Pot_pressed():
	_item_found(1, 1);
	CoffeePot.visible = false;

func _item_found(itemSlot, foundItem):
	slotList[itemSlot].setItem(itemList[foundItem]);