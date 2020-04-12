/*
	100% Organic Free-Range Dropt script.
*/

import mods.dropt.Dropt;

//remove fossil plant from fossil block drops
Dropt.list("remove_plantfossil")

  .add(Dropt.rule()
      .matchBlocks(["fossil:fossil"])
      .matchDrops([<fossil:plant_fossil>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop())
  );