/*
	100% Organic Free-Range Vanilla Crafting Table recipes script.
	This script is for adding and removing recipes by mod.
	Rename this script for the mod it's modifying.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


/*
	Recipe Removals by Item
*/
static itemRecipeRemoval as IItemStack[] = [
//	<modid:itemname:meta>,
<minecraft:purpur_block>,
<minecraft:cake>,
<minecraft:spruce_boat>,
<minecraft:birch_boat>,
<minecraft:jungle_boat>,
<minecraft:acacia_boat>,
<minecraft:dark_oak_boat>,

];

/*
	Recipe and JEI Removals by Item
*/
static itemRecipeRemovalJEI as IItemStack[] = [
//	<modid:itemname:meta>,
];


/*
	Named Shaped Recipes
*/	
static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
/*	<mod:itemname:meta> : {
		"string_for_recipe_name" : [
			[
	  			[<mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>],
	   			[<mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>],
	  			[<mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>]
			]
		]
	}	*/
<minecraft:chest> * 4 : {
		"minecraft_chest_modbulk" : [
			[
	  			[<ore:modLogs>, <ore:modLogs>, <ore:modLogs>],
	   			[<ore:modLogs>, null, <ore:modLogs>],
	  			[<ore:modLogs>, <ore:modLogs>, <ore:modLogs>]
			]
		]
	},
<minecraft:stick> * 16 : {
    "minecraft_stick_bulk" : [
        [
            [<ore:logWood>],
            [<ore:logWood>]
        ]
    ]
},
<minecraft:purpur_block> * 4 : {
    "minecraft_purpur_block_test" : [
        [
            [<minecraft:chorus_fruit_popped>, <ore:cobblestone>, <minecraft:chorus_fruit_popped>],
            [<minecraft:chorus_fruit_popped>, <ore:cobblestone>, <minecraft:chorus_fruit_popped>]
        ]
    ]
},
<minecraft:cake>: {
    "minecraft_cake_oredict" : [
        [
            [<ore:listAllmilk>, <ore:listAllmilk>, <ore:listAllmilk>],
            [<minecraft:sugar>, <ore:egg>, <minecraft:sugar>],
            [<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>]
        ]
    ]
}
};


/*
	Named Mirrored Recipes
*/
static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
/*	<mod:itemname:meta> : {
		"string_for_recipe_name" : [
			[
	  			[<mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>],
	   			[<mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>],
	  			[<mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>]
			]
		]
	}	*/
};


/*
	Named Shapeless Recipes
*/
static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
/*	<mod:itemname:meta> : {
		"string_for_recipe_name" : [
			[<mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>]
		]
	}	*/
<minecraft:spruce_boat> : {
		"minecraft_spruce_boat" : [
			[<minecraft:boat>, <minecraft:planks:1>]
		]
	},
<minecraft:birch_boat> : {
		"minecraft_birch_boat" : [
			[<minecraft:boat>, <minecraft:planks:2>]
		]
	},
<minecraft:jungle_boat> : {
		"minecraft_jungle_boat" : [
			[<minecraft:boat>, <minecraft:planks:3>]
		]
	},
<minecraft:acacia_boat> : {
		"minecraft_acacia_boat" : [
			[<minecraft:boat>, <minecraft:planks:4>]
		]
	},
<minecraft:dark_oak_boat> : {
		"minecraft_dark_oak_boat" : [
			[<minecraft:boat>, <minecraft:planks:5>]
		]
	}
};




// Do NOT edit below this line //


/*
	Loops to Add Recipes
*/

// Add Named Shaped Recipes
for item, itemRecipes in namedShapedRecipes {
	for recipeName, recipesInner in itemRecipes {
		for recipe in recipesInner {
				var nameyName = recipeName;			  		
				if (recipeName == "nameless") {
					recipes.addShaped(item, recipe);
				} else {
					recipes.addShaped(nameyName, item, recipe);
				}
		}				
	}		
}

// Add Named Mirrored Recipes
for item, itemRecipes in namedMirroredRecipes {
	for recipeName, recipesInner in itemRecipes {
		for recipe in recipesInner {
				var nameyName = recipeName;			  		
				if (recipeName == "nameless") {
					recipes.addShapedMirrored(item, recipe);
				} else {
					recipes.addShapedMirrored(nameyName, item, recipe);
				}
		}				
	}		
}

// Add Named Shapeless Recipes
for item, itemRecipes in namedShapelessRecipes {
	for recipeName, recipesInner in itemRecipes {
		for recipe in recipesInner {
				var nameyName = recipeName;			  		
				if (recipeName == "nameless") {
					recipes.addShapeless(item, recipe);
				} else {
					recipes.addShapeless(nameyName, item, recipe);
				}
		}				
	}		
}

/*
	Loops to Remove Recipes
*/
// Remove Item Recipe for replacement
for item in itemRecipeRemoval {
	recipes.remove(item);
}
// Remove Item Recipes from game and JEI display
for item in itemRecipeRemovalJEI {
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}
