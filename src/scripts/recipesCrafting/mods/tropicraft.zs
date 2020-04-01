/*
	100% Organic Free-Range Tropicraft Crafting Table recipes script.
	This script is for adding and removing recipes for Tropicraft.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


/*
	Recipe Removals by Item
*/
static itemRecipeRemoval as IItemStack[] = [
//	<modid:itemname:meta>
	<tropicraft:sifter:0>,
	<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 11 as byte}, {IngredientID: 10 as byte}], Color: 15724527, DrinkID: 6 as byte}),
	<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 11 as byte}, {IngredientID: 9 as byte}], Color: 15724527, DrinkID: 6 as byte}),
	<tropicraft:coconut_bomb:0>,
	<tropicraft:bamboo_mug>,
	<tropicraft:flower_pot>,
	<tropicraft:bamboo_stick>,
	<tropicraft:bamboo_chest>,
	<tropicraft:bamboo_item_frame>
];

/*
	Recipe and JEI Removals by Item
*/
static itemRecipeRemovalJEI as IItemStack[] = [
//	<modid:itemname:meta>,
];


/*
	Add Recipes
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
	<tropicraft:coconut_bomb:0> : {
		"tropicraft_coconut_bomb" : [
			[
	  			[null, <ore:gunpowder>, null],
	  			[<ore:gunpowder>, <ore:coconut>, <ore:gunpowder>],
	  			[null, <ore:gunpowder>, null]
			]
		]
	},
	<tropicraft:sifter> : {
		"tropicraft_sifter" : [
			[
	  			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	   			[<ore:plankWood>, <ore:blockGlass>, <ore:plankWood>],
	  			[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
			]
		]
	},
	<tropicraft:bamboo_mug> : {
		"tropicraft_bamboo_mug" : [
			[
	  			[<ore:bamboo>, null, <ore:bamboo>],
	   			[<ore:bamboo>, null, <ore:bamboo>],
	  			[<ore:bamboo>, <ore:bamboo>, <ore:bamboo>]
			]
		]
	},
	<tropicraft:flower_pot> : {
		"tropicraft_flower_pot" : [
			[
	   			[<ore:bamboo>, null, <ore:bamboo>],
	  			[null, <ore:bamboo>, null]
			]
		]
	},
	<tropicraft:bamboo_stick> : {
		"tropicraft_bamboo_stick" : [
			[
	   			[<ore:bamboo>],
	  			[<ore:bamboo>]
			]
		]
	},
	<tropicraft:bamboo_chest> : {
		"tropicraft_bamboo_chest" : [
			[
	  			[<ore:bamboo>, <ore:bamboo>, <ore:bamboo>],
	   			[<ore:bamboo>, null, <ore:bamboo>],
	  			[<ore:bamboo>, <ore:bamboo>, <ore:bamboo>]
			]
		]
	},
	<tropicraft:bamboo_item_frame> : {
		"tropicraft_bamboo_item_frame" : [
			[
	  			[<ore:bamboo>, <ore:bamboo>, <ore:bamboo>],
	   			[<ore:bamboo>, <ore:leather>, <ore:bamboo>],
	  			[<ore:bamboo>, <ore:bamboo>, <ore:bamboo>]
			]
		]
	}
};


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


static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
/*	<mod:itemname:meta> : {
		"string_for_recipe_name" : [
			[<mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>, <mod:itemname:meta>]
		]
	}	*/
	<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 11 as byte}, {IngredientID: 10 as byte}], Color: 15724527, DrinkID: 6 as byte}) : {
		"tropicraft_pina_colada_coconut_pineapple_cubes" : [
			[<ore:coconut>, <tropicraft:pineapple_cubes:0>, <tropicraft:bamboo_mug:0>]
		]
	},
	<tropicraft:cocktail>.withTag({Ingredients: [{IngredientID: 11 as byte}, {IngredientID: 9 as byte}], Color: 15724527, DrinkID: 6 as byte}) : {
		"tropicraft_pina_colada_full_ingredients" : [
			[<ore:coconut>, <tropicraft:pineapple:0>, <tropicraft:bamboo_mug>]
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
