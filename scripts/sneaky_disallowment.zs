import mods.immersiveengineering.MetalPress;
import minetweaker.item.IItemStack;
import mods.nei.NEI;

mods.immersiveengineering.MetalPress.removeRecipe(<item:ImmersiveEngineering:metal:30>);
mods.immersiveengineering.MetalPress.removeRecipe(<item:ImmersiveEngineering:material:14>);
recipes.remove(<item:ImmersiveEngineering:material:14>);
recipes.remove(<item:ImmersiveEngineering:metal:30>);

val array = [
<item:minecraft:sticky_piston>,
<item:Railcraft:ingot:1>,
<item:minefantasy2:MF_Com_ingotCopper>,
<item:minefantasy2:MF_Com_ingotCopper:1>,
<item:libVulpes:libVulpesproductingot:4>,
<item:libVulpes:libVulpesproductrod:1>
] as IItemStack[];

for item in array {
    NEI.hide(item);
    recipes.remove(item);
}
