import mods.roots.FlowerGrowth;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import mods.contenttweaker.BlockState;

var flowerList = [
    <dungeontactics:flower_sanguine>,
    <dungeontactics:flower_feather>,
    <dungeontactics:flower_fade>,
    <dungeontactics:flower_ailment>,
    <dungeontactics:flower_tangle>,
    <dungeontactics:flower_cinder>,
    <dungeontactics:flower_bark>,
    <dungeontactics:flower_bramble>,
    <dungeontactics:flower_xp>,
    <futuremc:wither_rose>,
    <futuremc:cornflower>,
    <futuremc:lily_of_the_valley>,
    <landsoficaria:flower>,
    <landsoficaria:flower:1>,
    <landsoficaria:flower:2>,
    <landsoficaria:flower:3>,
    <landsoficaria:flower:4>,
    <landsoficaria:flower:5>,
    <landsoficaria:flower:6>,
    <landsoficaria:flower:7>,
    <landsoficaria:flower:8>,
    <landsoficaria:flower:9>,
    <landsoficaria:flower:10>,
    <landsoficaria:flower:11>,
    <landsoficaria:flower:12>,
    <landsoficaria:flower:13>,
    <landsoficaria:flower:14>,
    <landsoficaria:flower:15>,
    <landsoficaria:flower_2>,
    <pvj:sundew>,
    <pvj:silverleaf>,
    <pvj:frost_lotus>,
    <ebwizardry:crystal_flower>,
    <tropicraft:flower>,
    <tropicraft:flower:1>,
    <tropicraft:flower:2>,
    <tropicraft:flower:3>,
    <tropicraft:flower:4>,
    <tropicraft:flower:5>,
    <tropicraft:flower:6>,
    <tropicraft:flower:7>,
    <tropicraft:flower:8>,
    <tropicraft:flower:9>,
    <tropicraft:flower:10>,
    <tropicraft:flower:11>,
    <tropicraft:flower:12>,
    <tropicraft:flower:13>,
    <tropicraft:flower:14>,
    <thaumcraft:shimmerleaf>,
    <thaumcraft:vishroom>
] as IItemStack[];

var recipieName = "customFlowerRitualRecipie" as string;

for i, item in flowerList {
    recipieName = "customFlowerRitualRecipie_";
    recipieName += i as string;
    FlowerGrowth.addRecipeItemOnSoils(recipieName, item, [<ore:grass>]);
}
FlowerGrowth.addRecipeItemOnSoils("customFlowerRitualRecipie_cinderpearl", <thaumcraft:cinderpearl>, [<ore:sand>]);
FlowerGrowth.addRecipeItemOnSoils("customFlowerRitualRecipie_fire_lily", <iceandfire:fire_lily>, [<ore:sand>]);
FlowerGrowth.addRecipeItemOnSoils("customFlowerRitualRecipie_frost_lily", <iceandfire:frost_lily>, [<minecraft:ice>, <minecraft:packed_ice>, <futuremc:blue_ice>, <chisel:ice>]);
