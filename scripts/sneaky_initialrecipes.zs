import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

/*
All the initial variables from items_and_recipes.zs (not sure if there was a way to import variables from another .zs file)
*/

val IRON_PLATE = <item:ImmersiveEngineering:metal:30>;
val ALUMINIUM_PLATE = <item:ImmersiveEngineering:metal:32>;
val STEEL_PLATE = <item:ImmersiveEngineering:metal:38>;
val IRON_ROD = <item:ImmersiveEngineering:material:14>;
val STEEL_ROD = <item:ImmersiveEngineering:material:15>;
val ALUMINIUM_ROD = <item:ImmersiveEngineering:material:16>;
val IRON_SHEETMETAL = <item:ImmersiveEngineering:metalDecoration:10>;
val WROUGHT_IRON_SCAFFOLDING =  <item:ImmersiveEngineering:metalDecoration2:3>;
val RADIATOR_BLOCK = <item:ImmersiveEngineering:metalDecoration:4>;
val STEEL_SCAFFOLDING = <item:ImmersiveEngineering:metalDecoration:1>;
val HEAVY_ENG_BLOCK = <item:ImmersiveEngineering:metalDecoration:5>;
val GENERATOR_BLOCK = <item:ImmersiveEngineering:metalDecoration:6>;
val LIGHT_ENGINEERING_BLOCK = <item:ImmersiveEngineering:metalDecoration:7>;
val ALUMINIUM_SCAFFOLDING = <item:ImmersiveEngineering:metalDecoration:13>;
val STEEL_SHEETMETAL = <item:ImmersiveEngineering:metalDecoration2:2>;
val ALUMINIUM_SHEETMETAL = <item:ImmersiveEngineering:metalDecoration2>;
val COPPER_COIL = <item:ImmersiveEngineering:storage:8>;
val MAGNET = <item:Magneticraft:item.magnet>;
val COPPER_HEAT_COIL = <item:Magneticraft:item.heatcoil_copper>; //TODO Check if these three have a spot or should be deleted
val IRON_HEAT_COIL = <item:Magneticraft:item.heatcoil_iron>;  //As they might be too niche to be reused across multiple recipes.
val TUNGSTEN_HEAT_COIL = <item:Magneticraft:item.heatcoil_tungsten>; //IDK, thinking about it.
val ELECTRIC_MOTOR = <item:Magneticraft:item.motor>;
val COPPER_COIL_MGC = <item:Magneticraft:item.copper_coil>;
val IRON_TORQUE_SHAFT = <item:AncientWarfare:component:7>;
val STEEL_TORQUE_SHAFT = <item:AncientWarfare:component:8>;
val IRON_GEAR_SET = <item:AncientWarfare:component:1>;
val STEEL_GEAR_SET = <item:AncientWarfare:component:2>;
val IRON_MECH_COMP = <item:ImmersiveEngineering:material:11>;
val STEEL_MECH_COMP = <item:ImmersiveEngineering:material:12>;
val TREATED_WOOD = <item:ImmersiveEngineering:woodenDecoration:4>;
val RUBBER = <item:Magneticraft:item.rubber>;
val FABRIC = <item:Magneticraft:item.string_fabric>;

// TBD currency variable

var COIN = <item:minecraft:gold_ingot>; // soft currency
var COINBLOCK = <item:minecraft:gold_block>; // convenient way to store 9 'soft currency'
var HARDCOIN = <item:advancedRocketry:advancedRocketryproductingot>; // hard currency
var IRON = <item:minecraft:iron_ingot>; // main building block for stuff
val BREAD = <item:minecraft:bread>;
val STEAK = <item:minecraft:cooked_beef>;
val CHICKEN = <item:minecraft:cooked_chicken>;
val IRON_ORE = <item:minecraft:iron_ore>;
val IRON_BLOCK = <item:minecraft:iron_block>;


// from what I understood we'll probably be using admin shops for these but I wanted to add these simply as a way for preliminary balance

recipes.addShaped(COIN*3,
 [[BREAD, BREAD, BREAD],
  [BREAD, BREAD, BREAD],
  [BREAD, BREAD, BREAD]]);

recipes.addShaped(COIN*12,
 [[STEAK, STEAK, STEAK],
  [STEAK, STEAK, STEAK],
  [STEAK, STEAK, STEAK]]);

recipes.addShaped(COIN*9,
 [[CHICKEN, CHICKEN, CHICKEN],
  [CHICKEN, CHICKEN, CHICKEN],
  [CHICKEN, CHICKEN, CHICKEN]]);

recipes.addShaped(COIN*18,
 [[IRON_ORE, IRON_ORE, IRON_ORE],
  [IRON_ORE, IRON_ORE, IRON_ORE],
  [IRON_ORE, IRON_ORE, IRON_ORE]]);


// 81 coins for 27 iron, or 3 coins for 1 iron essentially. This means:
// 9 bread into 1 iron
// 2.25 steak into 1 iron
// 3 chicken into 1 iron
// 1.5 iron ore into 1 iron

recipes.addShaped(IRON*27,
 [[COINBLOCK, COINBLOCK, COINBLOCK],
  [COINBLOCK, COINBLOCK, COINBLOCK],
  [COINBLOCK, COINBLOCK, COINBLOCK]]);


// simple AR machines and stuff

// Rolling Machine - 25 iron or 75 coins. (for comparison, ~38 iron ore or 175 bread)
recipes.addShaped(<item:advancedRocketry:tile.rollingMachine>,
 [[IRON_TORQUE_SHAFT, IRON, IRON_TORQUE_SHAFT],
  [IRON, IRON_BLOCK, IRON],
  [IRON_TORQUE_SHAFT, IRON, IRON_TORQUE_SHAFT]]);

// Machine Structure - 3 iron or 9 coins per block (for comparison, ~5 iron ore or 27 bread per block)
recipes.addShaped(<item:libVulpes:blockStructureBlock>*3,
 [[null, IRON, null],
  [IRON, IRON_GEAR_SET, IRON],
  [null, IRON, null]]);

// Input Block - 6 iron or 18 coins (for comparison, 9 iron ore or 54 bread)
recipes.addShaped(<item:libVulpes:blockHatch>,
 [[null, <item:minecraft:chest>, null],
  [IRON, <item:libVulpes:blockStructureBlock>, IRON],
  [null, IRON, null]]);

// Fluid Input Block - 9 iron or 27 coins(for comparison, ~14 iron ore or 81 bread)
recipes.addShaped(<item:libVulpes:blockHatch:2>,
 [[null, <item:minecraft:bucket>, null],
  [IRON, <item:libVulpes:blockStructureBlock>, IRON],
  [null, IRON, null]]);

// Output Block - 6 iron or 18 coins (for comparison, 9 iron ore or 54 bread)
recipes.addShaped(<item:libVulpes:blockHatch:1>,
 [[null, IRON, null],
  [IRON, <item:libVulpes:blockStructureBlock>, IRON],
  [null, <item:minecraft:chest>, null]]);

// Fluid Output Block - 9 iron or 27 coins(for comparison, ~14 iron ore or 81 bread)
recipes.addShaped(<item:libVulpes:blockHatch:3>,
 [[null, IRON, null],
  [IRON, <item:libVulpes:blockStructureBlock>, IRON],
  [null, <item:minecraft:bucket>, null]]);

// assuming 1 copper = 2 iron
// RF Input Block - 11 iron or 33 coins (for comparison, ~17 iron ore or 99 bread)
recipes.addShaped(<item:libVulpes:rfBattery>,
 [[null, <item:ImmersiveEngineering:coil>, null],
  [<item:ImmersiveEngineering:coil>, <item:libVulpes:blockStructureBlock>, <item:ImmersiveEngineering:coil>],
  [null, <item:ImmersiveEngineering:coil>, null]]);

// Motor - 10.5 iron or 31.5 coins per block (for comparison, ~16 iron ore or ~95 bread 
recipes.addShaped(<item:libVulpes:tile.motor>*2,
 [[<item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>],
  [IRON_TORQUE_SHAFT, IRON_TORQUE_SHAFT, IRON_TORQUE_SHAFT],
  [<item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>, <item:ImmersiveEngineering:coil>]]);

//Total for a rolling machine: 91.5 iron or 275 coins (for comparison, ~138 iron ore or 823.5 bread (13 stacks)
//Probably too much?
