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
##

# Add Fluid Transposer Recipe for Glowstone Ingot
# Glowstone Ingot = 4kRF + Osmium + Energized Glowstone
mods.thermalexpansion.Transposer.addFillRecipe(4000, <Mekanism:Ingot:1>, <Mekanism:Ingot:3>, <liquid:glowstone>*250);

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
	[<minecraft:diamond>, <minecraft:ender_pearl>, <minecraft:diamond>],
	[<ore:ingotSilver>,<minecraft:wool:15>,<ore:ingotSilver>]
]);

# HardcoreEnderExpansion:corporeal_mirage_orb
# Ender Dragon Spawn Egg
recipes.addShaped(<minecraft:spawn_egg:3>, [
	[<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:essence>],
	[<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:soul_charm>,<HardcoreEnderExpansion:essence>],
	[<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:essence>,<HardcoreEnderExpansion:essence>]
]);