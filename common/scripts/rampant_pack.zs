# Combine Botania & HarvestCraft mortar & pestle oredict entries
<ore:toolMortarandpestle>.addAll(<ore:pestleAndMortar>);
<ore:pestleAndMortar>.mirror(<ore:toolMortarandpestle>);

# Remove Natura Stew
recipes.remove(<Natura:natura.stewbowl>);

# Change HarvestCraft Pot Recipe
recipes.remove(<harvestcraft:potItem>);
recipes.addShaped(<harvestcraft:potItem>, [
	[<ore:stickWood>, <ore:ingotCopper>, <ore:ingotCopper>],
	[null, <ore:ingotCopper>, <ore:ingotCopper>],
	[null, null, null]
]);
<harvestcraft:potItem>.displayName = "Copper Pot";

# Clay Water Bucket -> Fresh Water
recipes.addShapeless(<harvestcraft:freshwaterItem>*4, [<IguanaTweaksTConstruct:clayBucketWater>]);


# Wheat Seed = Any 2 Seeds + Mortar & Pestle
recipes.addShapeless(<minecraft:wheat_seeds>, [<ore:toolMortarandpestle>, <ore:listAllseed>, <ore:listAllseed>]);

# Attempt to Consolidate Bronze Recipes
furnace.remove(<Metallurgy:bronze.ingot>);
furnace.addRecipe(<TConstruct:materials:13>, <Metallurgy:base.dust:3>, 0.25);


# Add alternate anvil recipes.
recipes.addShaped(<minecraft:anvil>, [
	[<Metallurgy:fantasy.block:4>, <Metallurgy:fantasy.block:4>, <Metallurgy:fantasy.block:4>],
	[null, <Metallurgy:oureclase.ingot>, null],
	[<Metallurgy:oureclase.ingot>,<Metallurgy:oureclase.ingot>,<Metallurgy:oureclase.ingot>]
]);

recipes.addShaped(<minecraft:anvil>, [
	[<Metallurgy:fantasy.block:6>, <Metallurgy:fantasy.block:6>, <Metallurgy:fantasy.block:6>],
	[null, <Metallurgy:carmot.ingot>, null],
	[<Metallurgy:carmot.ingot>,<Metallurgy:carmot.ingot>,<Metallurgy:carmot.ingot>]
]);

recipes.addShaped(<minecraft:anvil>, [
	[<Metallurgy:nether.block:6>, <Metallurgy:nether.block:6>, <Metallurgy:nether.block:6>],
	[null, <Metallurgy:alduorite.ingot>, null],
	[<Metallurgy:alduorite.ingot>,<Metallurgy:alduorite.ingot>,<Metallurgy:alduorite.ingot>]
]);

# Add Alternate Hopper Recipes
# Aluminum
recipes.addShaped(<minecraft:hopper>, [
	[<ore:ingotAluminum>, null, <ore:ingotAluminum>],
	[<ore:ingotAluminum>, <minecraft:chest>, <ore:ingotAluminum>],
	[null, <ore:ingotAluminum>, null]
]);
# Oureclase
recipes.addShaped(<minecraft:hopper>, [
	[<ore:ingotOureclase>, null, <ore:ingotOureclase>],
	[<ore:ingotOureclase>, <minecraft:chest>, <ore:ingotOureclase>],
	[null, <ore:ingotOureclase>, null]
]);

##
# Remove Shapeless Recipes for Alloy Dusts.
#
# Bronze Dust
recipes.remove(<ore:dustBronze>);
# Black Steel Dust
recipes.remove(<ore:dustBlackSteel>);
# Hepatizon Dust
recipes.remove(<ore:dustHepatizon>);
# Angmallen Dust
recipes.remove(<ore:dustAngmallen>);
# Damascus Steel
recipes.remove(<ore:dustDamascusSteel>);
# Electrum Dust
recipes.remove(<ore:dustElectrum>);
# Shadow Steel Dust
recipes.remove(<ore:dustShadowSteel>);
# Inolashite Dust
recipes.remove(<ore:dustInolashite>);
# Amordrine
recipes.remove(<ore:dustAmordrine>);
# Quicksilver
recipes.remove(<ore:dustQuicksilver>);
# Haderoth
recipes.remove(<ore:dustHaderoth>);
# Celenegil
recipes.remove(<ore:dustCelenegil>);
# Tartarite
recipes.remove(<ore:dustTartarite>);
# Desichalkos
recipes.remove(<ore:dustDesichalkos>);
# Manyullyn
recipes.remove(<ore:dustManyullyn>);
##
# Remove Mekanism recipes to make Steel
mods.mekanism.Infuser.removeRecipe(<Mekanism:EnrichedIron>);
mods.mekanism.Infuser.removeRecipe(<Mekanism:Ingot:4>);
mods.mekanism.Infuser.removeRecipe(<Mekanism:Dust:5>);

##
# Add additional Infuser Recipes
mods.mekanism.Infuser.addRecipe("REDSTONE", 20, <Metallurgy:oureclase.ingot>, <Mekanism:EnrichedAlloy>);
mods.mekanism.Infuser.addRecipe("CARBON", 100, <Metallurgy:prometheum.ingot>, <Mekanism:EnrichedIron>);
mods.mekanism.Infuser.addRecipe("CARBON", 100, <Metallurgy:carmot.ingot>, <Mekanism:EnrichedIron>);

##
# Add Induction Smelter Recipes for Alloys
#
# Hepatizon Ingot = Bronze Dust + Gold Dust
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:41>, <ThermalFoundation:material:1>, <Metallurgy:hepatizon.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:73>, <minecraft:gold_ingot>, <Metallurgy:hepatizon.ingot>*2);
#
# Angmallen = Iron Dust/Ingot + Gold Dust/Ingot
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:0>, <ThermalFoundation:material:1>, <Metallurgy:angmallen.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <minecraft:iron_ingot>, <minecraft:gold_ingot>, <Metallurgy:angmallen.ingot>*2);
#
# Damascus Steel = Bronze Dust/Ingot + Iron Dust/Ingot
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:41>, <ThermalFoundation:material:0>, <Metallurgy:damascus.steel.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:73>, <minecraft:iron_ingot>, <Metallurgy:damascus.steel.ingot>*2);
#
# Steel = Iron Dust/Ingot + Manganese Dust/Ingot
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:0>, <Metallurgy:base.dust:2>, <TConstruct:materials:16>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <minecraft:iron_ingot>, <Metallurgy:manganese.ingot>, <TConstruct:materials:16>*2);
#
# Shadow Steel = Shadow Iron Dust/Ingot + Lemurite Dust/Ingot
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:nether.dust:1>, <Metallurgy:nether.dust:2>, <Metallurgy:shadow.steel.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:shadow.iron.ingot>, <Metallurgy:lemurite.ingot>, <Metallurgy:shadow.steel.ingot>*2);
#
# Inolashite = Alduorite + Ceruclase
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:nether.dust:6>, <Metallurgy:nether.dust:5>, <Metallurgy:inolashite.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:alduorite.ingot>, <Metallurgy:ceruclase.ingot>, <Metallurgy:inolashite.ingot>*2);
#
# Amordrine = Kalendrite + Platinum
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:nether.dust:7>, <ThermalFoundation:material:37>, <Metallurgy:amordrine.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:kalendrite.ingot>, <ThermalFoundation:material:69>, <Metallurgy:amordrine.ingot>*2);
#
# Manyullyn = Cobolt + Ardite
mods.thermalexpansion.Smelter.addRecipe(2400, <TConstruct:materials:38>, <TConstruct:materials:39>, <TConstruct:materials:5>);
mods.thermalexpansion.Smelter.addRecipe(2400, <TConstruct:materials:4>, <TConstruct:materials:3>, <TConstruct:materials:5>);
#
# Black Steel Ingot = Deep Iron Dust/Ingot + Infuscolium Dust/Ingot
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:fantasy.dust:1>, <Metallurgy:fantasy.dust:2>, <Metallurgy:black.steel.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:deep.iron.ingot>, <Metallurgy:infuscolium.ingot>, <Metallurgy:black.steel.ingot>*2);
#
# Quicksilver = Mithril + Silver
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:38>, <ThermalFoundation:material:34>, <Metallurgy:quicksilver.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:70>, <ThermalFoundation:material:66>, <Metallurgy:quicksilver.ingot>*2);
#
# Haderoth = Mithril + Rubracium
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:38>, <Metallurgy:fantasy.dust:8>, <Metallurgy:haderoth.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:70>, <Metallurgy:rubracium.ingot>, <Metallurgy:haderoth.ingot>*2);
#
# Celenegil = Orichalcum + Platinum
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:fantasy.dust:11>, <ThermalFoundation:material:37>, <Metallurgy:celenegil.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:orichalcum.ingot>, <ThermalFoundation:material:69>, <Metallurgy:celenegil.ingot>*2);
#
# Tartarite = Adamantine + Atlarus
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:fantasy.dust:13>, <Metallurgy:fantasy.dust:14>, <Metallurgy:tartarite.ingot>);
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:adamantine.ingot>, <Metallurgy:atlarus.ingot>, <Metallurgy:tartarite.ingot>);
#
# Desichalkos = Eximite Meutoite
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:ender.dust:0>, <Metallurgy:ender.dust:1>, <Metallurgy:desichalkos.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:eximite.ingot>, <Metallurgy:meutoite.ingot>, <Metallurgy:desichalkos.ingot>*2);
#
# Aluminum Brass = Aluminum*3 + Copper
mods.thermalexpansion.Smelter.addRecipe(2400, <TConstruct:materials:11>*3, <ThermalFoundation:material:64>, <TConstruct:materials:14>*4);
mods.thermalexpansion.Smelter.addRecipe(2400, <TConstruct:materials:40>*3, <ThermalFoundation:material:32>, <TConstruct:materials:14>*4);#
#
# Brass = Copper + Zinc
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:64>, <Metallurgy:zinc.ingot>, <Metallurgy:brass.ingot>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <ThermalFoundation:material:32>, <Metallurgy:precious.dust>, <Metallurgy:brass.ingot>*2);
#
# Electrum = Midasium + Astral Silver
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:nether.dust:3>, <Metallurgy:fantasy.dust:5>, <ThermalExpansion:material:71>*2);
mods.thermalexpansion.Smelter.addRecipe(2400, <Metallurgy:midasium.ingot>, <Metallurgy:astral.silver.ingot>, <ThermalExpansion:material:71>*2);


# Add Fluid Transposer Recipe for Glowstone Ingot
# Glowstone Ingot = 4kRF + Osmium + Energized Glowstone
mods.thermalexpansion.Transposer.addFillRecipe(4000, <Mekanism:Ingot:1>, <Mekanism:Ingot:3>, <liquid:glowstone>*250);

# Remove End Stone crafting
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:sandstone>, <liquid:ender>);

# Remove Metallurgy machines.
recipes.remove(<Metallurgy:machine.frame>);
recipes.remove(<Metallurgy:crusher>);
recipes.remove(<Metallurgy:alloyer>);
recipes.remove(<Metallurgy:forge>);

# Phosphorus pulverizer recipe
mods.thermalexpansion.Pulverizer.addRecipe(4000, <Metallurgy:utility.ore:1>, <Metallurgy:utility.item:1>*2);

# Add Metallurgy fertilizer to fertilizer oredict entry.
<ore:fertilizerOrganic>.add(<Metallurgy:fertilizer>);

# Flint And Steel = Magnesium + Flint
recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:dustMagnesium>, <ore:ingotIron>]);

val oreSalt = <ore:oreSalt>;
oreSalt.add(<harvestcraft:salt>);
oreSalt.remove(<harvestcraft:saltItem>);
# Remove Salt -> Salt*2 Recipe (WTF was this?)
mods.thermalexpansion.Pulverizer.removeRecipe(<harvestcraft:saltItem>);
# Pulverizer Add Salt Ore -> Salt*2 Recipe (w/50% chance for an extra salt)
mods.thermalexpansion.Pulverizer.addRecipe(2400, <harvestcraft:salt>, <harvestcraft:saltItem>*2, <harvestcraft:saltItem>, 50);

# Add Crafting Recipe for Bucket of Brine + Pot = 4 Salt
#recipes.remove(<harvestcraft:saltItem>);
recipes.addShapeless(<harvestcraft:saltItem>*4, [<harvestcraft:potItem>, <Mekanism:BrineBucket>]);

##
# Make some more powerful items harder to craft.
#
# Golden Lasso
recipes.remove(<ExtraUtilities:golden_lasso>);
recipes.addShaped(<ExtraUtilities:golden_lasso>,
 [[<minecraft:gold_ingot>,<minecraft:string>,<minecraft:gold_ingot>],
  [<minecraft:string>,<Botania:enderEyeBlock>,<minecraft:string>],
	[<minecraft:gold_ingot>,<minecraft:string>,<minecraft:gold_ingot>]]);

# Ender Chest
recipes.remove(<minecraft:ender_chest>);
recipes.addShaped(<minecraft:ender_chest>, [
	[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<Botania:enderEyeBlock>,<minecraft:obsidian>],
	[<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]
]);

# Diamond-Etched Computation Matrix
recipes.remove(<ExtraUtilities:decorativeBlock1:12>);
recipes.addShaped(<ExtraUtilities:decorativeBlock1:12>, [
	[<ExtraUtilities:decorativeBlock1:2>,<minecraft:diamond_block>,<ExtraUtilities:decorativeBlock1:2>],
	[<minecraft:diamond_block>,<ExtraUtilities:decorativeBlock1:1>,<minecraft:diamond_block>],
	[<ExtraUtilities:decorativeBlock1:2>,<minecraft:diamond_block>,<ExtraUtilities:decorativeBlock1:2>]
]);

# Mekanism Teleportation Core
recipes.remove(<Mekanism:TeleportationCore>);
recipes.addShaped(<Mekanism:TeleportationCore>, [
	[<minecraft:gold_ingot>, <Mekanism:AtomicAlloy>, <minecraft:gold_ingot>],
	[<minecraft:diamond_block>, <Botania:enderEyeBlock>, <minecraft:diamond_block>],
	[<minecraft:gold_ingot>, <Mekanism:AtomicAlloy>, <minecraft:gold_ingot>]
]);

# Refined Relocation Player Relocator
recipes.remove(<RefinedRelocation:playerRelocator>);
recipes.addShaped(<RefinedRelocation:playerRelocator>, [
	[<minecraft:diamond>,<TConstruct:materials:7>,<minecraft:diamond>],
	[<minecraft:gold_ingot>,<Botania:enderEyeBlock>,<minecraft:gold_ingot>],
	[<minecraft:diamond>,<minecraft:gold_ingot>,<minecraft:diamond>]
]);

# Tesseract
recipes.remove(<ThermalExpansion:Frame:7>);
recipes.addShaped(<ThermalExpansion:Frame:7>, [
	[<ThermalFoundation:material:76>,<ThermalExpansion:Glass>,<ThermalFoundation:material:76>],
	[<ThermalExpansion:Glass>,<HardcoreEnderExpansion:essence>,<ThermalExpansion:Glass>],
	[<ThermalFoundation:material:76>,<ThermalExpansion:Glass>,<ThermalFoundation:material:76>]
]);

# World Anchor
recipes.remove(<Railcraft:tile.railcraft.machine.alpha>);
recipes.addShaped(<Railcraft:tile.railcraft.machine.alpha>, [
	[<Metallurgy:astral.silver.ingot>,<minecraft:obsidian>,<Metallurgy:astral.silver.ingot>],
	[<minecraft:diamond>, <Botania:enderEyeBlock>, <minecraft:diamond>],
	[<Metallurgy:astral.silver.ingot>,<minecraft:obsidian>,<Metallurgy:astral.silver.ingot>]
]);

# Personal Anchor
recipes.remove(<Railcraft:tile.railcraft.machine.alpha:2>);
recipes.addShaped(<Railcraft:tile.railcraft.machine.alpha:2>, [
	[<ore:ingotSilver>,<minecraft:wool:15>,<ore:ingotSilver>],
	[<ore:gemDiamond>, <minecraft:ender_pearl>, <ore:gemDiamond>],
	[<ore:ingotSilver>,<minecraft:wool:15>,<ore:ingotSilver>]
]);

# HardcoreEnderExpansion:corporeal_mirage_orb
# Ender Dragon Spawn Egg
recipes.addShaped(<minecraft:spawn_egg:3>, [
	[<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:essence>],
	[<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:soul_charm>,<HardcoreEnderExpansion:essence>],
	[<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:essence>]
]);

# Machine Frame w/ Brass
recipes.addShaped(<ThermalExpansion:Frame>, [
	[<ore:ingotBrass>, <ore:blockGlass>, <ore:ingotBrass>],
	[<ore:blockGlass>, <ore:gearTin>, <ore:blockGlass>],
	[<ore:ingotBrass>, <ore:blockGlass>, <ore:ingotBrass>]
]);

# Machine Frame w/ Prometheium
recipes.addShaped(<ThermalExpansion:Frame>, [
	[<ore:ingotPrometheum>, <ore:blockGlass>, <ore:ingotPrometheum>],
	[<ore:blockGlass>, <ore:gearTin>, <ore:blockGlass>],
	[<ore:ingotPrometheum>, <ore:blockGlass>, <ore:ingotPrometheum>]
]);

# Machine Frame w/ Shadow Steel
recipes.addShaped(<ThermalExpansion:Frame>, [
	[<ore:ingotShadowSteel>, <ore:blockGlass>, <ore:ingotShadowSteel>],
	[<ore:blockGlass>, <ore:gearTin>, <ore:blockGlass>],
	[<ore:ingotShadowSteel>, <ore:blockGlass>, <ore:ingotShadowSteel>]
]);

# Machine Frame w/ Aluminum
recipes.addShaped(<ThermalExpansion:Frame>, [
	[<ore:ingotAluminum>, <ore:blockGlass>, <ore:ingotAluminum>],
	[<ore:blockGlass>, <ore:gearTin>, <ore:blockGlass>],
	[<ore:ingotAluminum>, <ore:blockGlass>, <ore:ingotAluminum>]
]);

# Pneumatic Servo w/Brass
recipes.addShaped(<ThermalExpansion:material>, [
	[null, <ore:ingotBrass>, null],
	[<ore:blockGlass>, <ore:dustRedstone>, <ore:blockGlass>],
	[null, <ore:ingotBrass>, null]
]);

# Pneumatic Servo w/Promethum
recipes.addShaped(<ThermalExpansion:material>, [
	[null, <ore:ingotPrometheum>, null],
	[<ore:blockGlass>, <ore:dustRedstone>, <ore:blockGlass>],
	[null, <ore:ingotPrometheum>, null]
]);

# Pneumatic Servo w/Shadow Steel
recipes.addShaped(<ThermalExpansion:material>, [
	[null, <ore:ingotShadowSteel>, null],
	[<ore:blockGlass>, <ore:dustRedstone>, <ore:blockGlass>],
	[null, <ore:ingotShadowSteel>, null]
]);

# Pneumatic Servo w/ Aluminum
recipes.addShaped(<ThermalExpansion:material>, [
	[null, <ore:ingotAluminum>, null],
	[<ore:blockGlass>, <ore:dustRedstone>, <ore:blockGlass>],
	[null, <ore:ingotAluminum>, null]
]);

# Lumium = Prometheum + Astral SIlver
recipes.addShapeless(<ThermalFoundation:material:42>*4,
	[<ore:dustPrometheum>, <ore:dustPrometheum>, <ore:dustPrometheum>,
	<ore:dustAstralSilver>, <ThermalFoundation:bucket>]);

# Lumium = Lemurite + Astral Silver
recipes.addShapeless(<ThermalFoundation:material:43>*4,
	[<ore:dustLemurite>, <ore:dustLemurite>, <ore:dustLemurite>,
	<ore:dustAstralSilver>, <ThermalFoundation:bucket:1>]);

# Black Steel/Shadow Steel in Purification Chamber -> Steel Dust
mods.mekanism.Purification.addRecipe(<Metallurgy:black.steel.ingot>, <Metallurgy:base.dust:7>);
mods.mekanism.Purification.addRecipe(<Metallurgy:shadow.steel.ingot>, <Metallurgy:base.dust:7>);

# Black Steel/Shadow Steel in a Blast Furnace -> Steel Ingot
mods.railcraft.BlastFurnace.addRecipe(<Metallurgy:black.steel.ingot>, false, false, 260, <Railcraft:ingot>);
mods.railcraft.BlastFurnace.addRecipe(<Metallurgy:shadow.steel.ingot>, false, false, 260, <Railcraft:ingot>);

# Infuscolium/Lemurite in a Blast Furnace -> Iron Ingot
mods.railcraft.BlastFurnace.addRecipe(<Metallurgy:infuscolium.ingot>, false, false, 260, <minecraft:iron_ingot>);
mods.railcraft.BlastFurnace.addRecipe(<Metallurgy:lemurite.ingot>, false, false, 260, <minecraft:iron_ingot>);

# One Ignatius Ingot can smelt 32 items in a furnace.
furnace.setFuel(<ore:ingotIgnatius>, 6400);
# Vulcanite is 4x as good as Ignatius (128 items)
furnace.setFuel(<ore:ingotVulanite>, 25600);
# Blocks can smelt 10x an ingot (320 items and 1280 items, respectively)
furnace.setFuel(<ore:blockIgnatius>, 64000);
furnace.setFuel(<ore:blockVulcanite>, 256000);

# Standard Rail Recipes
# Prometheum
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail>*4, [
	[<Metallurgy:prometheum.ingot>, null, <Metallurgy:prometheum.ingot>],
	[<Metallurgy:prometheum.ingot>, null, <Metallurgy:prometheum.ingot>],
	[<Metallurgy:prometheum.ingot>, null, <Metallurgy:prometheum.ingot>]
]);
# Copper
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail>*4, [
	[<ThermalFoundation:material:64>, null, <ThermalFoundation:material:64>],
	[<ThermalFoundation:material:64>, null, <ThermalFoundation:material:64>],
	[<ThermalFoundation:material:64>, null, <ThermalFoundation:material:64>]
]);
# Shadow Iron
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail>*12, [
	[<Metallurgy:shadow.iron.ingot>, null, <Metallurgy:shadow.iron.ingot>],
	[<Metallurgy:shadow.iron.ingot>, null, <Metallurgy:shadow.iron.ingot>],
	[<Metallurgy:shadow.iron.ingot>, null, <Metallurgy:shadow.iron.ingot>]
]);
# Pig Iron
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail>*12, [
	[<TConstruct:materials:34>, null, <TConstruct:materials:34>],
	[<TConstruct:materials:34>, null, <TConstruct:materials:34>],
	[<TConstruct:materials:34>, null, <TConstruct:materials:34>]
]);

# Advanced Rail Recipes
# Silver
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:1>*4, [
	[<Railcraft:part.rail>, <minecraft:redstone>, <ThermalFoundation:material:66>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <ThermalFoundation:material:66>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <ThermalFoundation:material:66>]
]);
# Mithril
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:1>*14, [
	[<Railcraft:part.rail>, <minecraft:redstone>, <Metallurgy:mithril.ingot>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <Metallurgy:mithril.ingot>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <Metallurgy:mithril.ingot>]
]);
# Mana-Infused
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:1>*14, [
	[<Railcraft:part.rail>, <minecraft:redstone>, <ThermalFoundation:material:70>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <ThermalFoundation:material:70>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <ThermalFoundation:material:70>]
]);
# Platinum
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:1>*12, [
	[<Railcraft:part.rail>, <minecraft:redstone>, <Metallurgy:platinum.ingot>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <Metallurgy:platinum.ingot>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <Metallurgy:platinum.ingot>]
]);
# Shiny
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:1>*14, [
	[<Railcraft:part.rail>, <minecraft:redstone>, <ThermalFoundation:material:69>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <ThermalFoundation:material:69>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <ThermalFoundation:material:69>]
]);
# Hepatizon
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:1>*10, [
	[<Railcraft:part.rail>, <minecraft:redstone>, <Metallurgy:hepatizon.ingot>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <Metallurgy:hepatizon.ingot>],
	[<Railcraft:part.rail>, <minecraft:redstone>, <Metallurgy:hepatizon.ingot>]
]);


# Reinforced Rail Recipes
# Black Steel
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:4>*4, [
	[<Metallurgy:black.steel.ingot>, <ThermalFoundation:material:4>, <Metallurgy:black.steel.ingot>],
	[<Metallurgy:black.steel.ingot>, <ThermalFoundation:material:4>, <Metallurgy:black.steel.ingot>],
	[<Metallurgy:black.steel.ingot>, <ThermalFoundation:material:4>, <Metallurgy:black.steel.ingot>]
]);
# Shadow Steel
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:4>*8, [
	[<Metallurgy:shadow.steel.ingot>, <ThermalFoundation:material:4>, <Metallurgy:shadow.steel.ingot>],
	[<Metallurgy:shadow.steel.ingot>, <ThermalFoundation:material:4>, <Metallurgy:shadow.steel.ingot>],
	[<Metallurgy:shadow.steel.ingot>, <ThermalFoundation:material:4>, <Metallurgy:shadow.steel.ingot>]
]);
# Invar
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:4>*6, [
	[<ThermalFoundation:material:72>, <ThermalFoundation:material:4>, <ThermalFoundation:material:72>],
	[<ThermalFoundation:material:72>, <ThermalFoundation:material:4>, <ThermalFoundation:material:72>],
	[<ThermalFoundation:material:72>, <ThermalFoundation:material:4>, <ThermalFoundation:material:72>]
]);
# Kalendrite
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:4>*14, [
	[<Metallurgy:kalendrite.ingot>, <ThermalFoundation:material:4>, <Metallurgy:kalendrite.ingot>],
	[<Metallurgy:kalendrite.ingot>, <ThermalFoundation:material:4>, <Metallurgy:kalendrite.ingot>],
	[<Metallurgy:kalendrite.ingot>, <ThermalFoundation:material:4>, <Metallurgy:kalendrite.ingot>]
]);
# Inolashite
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:4>*12, [
	[<Metallurgy:inolashite.ingot>, <ThermalFoundation:material:4>, <Metallurgy:inolashite.ingot>],
	[<Metallurgy:inolashite.ingot>, <ThermalFoundation:material:4>, <Metallurgy:inolashite.ingot>],
	[<Metallurgy:inolashite.ingot>, <ThermalFoundation:material:4>, <Metallurgy:inolashite.ingot>]
]);
# Rubracium
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:4>*10, [
	[<Metallurgy:rubracium.ingot>, <ThermalFoundation:material:4>, <Metallurgy:rubracium.ingot>],
	[<Metallurgy:rubracium.ingot>, <ThermalFoundation:material:4>, <Metallurgy:rubracium.ingot>],
	[<Metallurgy:rubracium.ingot>, <ThermalFoundation:material:4>, <Metallurgy:rubracium.ingot>]
]);

# Electric Rail Recipes
# Brass
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:5>*4, [
	[<Railcraft:part.rail>, <Metallurgy:brass.ingot>, <Railcraft:part.rail>],
	[<Railcraft:part.rail>, <Metallurgy:brass.ingot>, <Railcraft:part.rail>],
	[<Railcraft:part.rail>, <Metallurgy:brass.ingot>, <Railcraft:part.rail>]
]);
# Oureclase
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:5>*4, [
	[<Railcraft:part.rail>, <Metallurgy:oureclase.ingot>, <Railcraft:part.rail>],
	[<Railcraft:part.rail>, <Metallurgy:oureclase.ingot>, <Railcraft:part.rail>],
	[<Railcraft:part.rail>, <Metallurgy:oureclase.ingot>, <Railcraft:part.rail>]
]);
# Electrum
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:5>*8, [
	[<Railcraft:part.rail>, <ThermalFoundation:material:71>, <Railcraft:part.rail>],
	[<Railcraft:part.rail>, <ThermalFoundation:material:71>, <Railcraft:part.rail>],
	[<Railcraft:part.rail>, <ThermalFoundation:material:71>, <Railcraft:part.rail>]
]);
# Carmot
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:5>*8, [
	[<Railcraft:part.rail>, <Metallurgy:carmot.ingot>, <Railcraft:part.rail>],
	[<Railcraft:part.rail>, <Metallurgy:carmot.ingot>, <Railcraft:part.rail>],
	[<Railcraft:part.rail>, <Metallurgy:carmot.ingot>, <Railcraft:part.rail>]
]);

# H.S. Rail Recipes
# Steel + Astral Silver
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:3>*10, [
	[<Railcraft:ingot>, <minecraft:blaze_powder>, <Metallurgy:astral.silver.ingot>],
	[<Railcraft:ingot>, <minecraft:blaze_powder>, <Metallurgy:astral.silver.ingot>],
	[<Railcraft:ingot>, <minecraft:blaze_powder>, <Metallurgy:astral.silver.ingot>]
]);
# Amordrine + Celenegil
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:3>*16, [
	[<Metallurgy:amordrine.ingot>, <minecraft:blaze_powder>, <Metallurgy:celenegil.ingot>],
	[<Metallurgy:amordrine.ingot>, <minecraft:blaze_powder>, <Metallurgy:celenegil.ingot>],
	[<Metallurgy:amordrine.ingot>, <minecraft:blaze_powder>, <Metallurgy:celenegil.ingot>]
]);
# Black steel + Carmot
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:3>*8, [
	[<Metallurgy:black.steel.ingot>, <minecraft:blaze_powder>, <Metallurgy:carmot.ingot>],
	[<Metallurgy:black.steel.ingot>, <minecraft:blaze_powder>, <Metallurgy:carmot.ingot>],
	[<Metallurgy:black.steel.ingot>, <minecraft:blaze_powder>, <Metallurgy:carmot.ingot>]
]);
# Brass + Silver
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:3>*4, [
	[<Metallurgy:brass.ingot>, <minecraft:blaze_powder>, <ThermalFoundation:material:66>],
	[<Metallurgy:brass.ingot>, <minecraft:blaze_powder>, <ThermalFoundation:material:66>],
	[<Metallurgy:brass.ingot>, <minecraft:blaze_powder>, <ThermalFoundation:material:66>]
]);
# Ceruclase + Quicksilver
mods.railcraft.Rolling.addShaped(<Railcraft:part.rail:3>*12, [
	[<Metallurgy:ceruclase.ingot>, <minecraft:blaze_powder>, <Metallurgy:quicksilver.ingot>],
	[<Metallurgy:ceruclase.ingot>, <minecraft:blaze_powder>, <Metallurgy:quicksilver.ingot>],
	[<Metallurgy:ceruclase.ingot>, <minecraft:blaze_powder>, <Metallurgy:quicksilver.ingot>]
]);
