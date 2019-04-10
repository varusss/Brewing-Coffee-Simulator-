extends TextureRect

var itemIcon;
var itemName;
var itemSlot;
#var picked = false;

func _init(itemName, itemTexture, itemSlot):
	name = itemName;
	self.itemName = itemName;
	texture = itemTexture;
	hint_tooltip = itemName;
	self.itemSlot = itemSlot;
	#mouse_filter = Control.MOUSE_FILTER_PASS;
	#mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND;
	pass
