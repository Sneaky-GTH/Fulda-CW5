import mods.nei.NEI;
import mods.minefantasy.CarpenterBench as Carpenter;
import mods.minefantasy.Anvil;
import minetweaker.item.IItemStack;

val removals = [

<item:minefantasy2:MF_BombCrafter>,
<item:minefantasy2:MF_CrossbowCrafter>,
<item:minefantasy2:cheese>,
<item:minefantasy2:repair_ornate>,
<item:minefantasy2:repair_advanced>,
<item:minefantasy2:repair_basic>,
<item:minefantasy2:MF_Research>,
<item:minefantasy2:MF_BombPress>,
<item:minefantasy2:salvage_basic>,
<item:minefantasy2:MF_Com_MF_Spawner:1>,
<item:minefantasy2:crate_basic>.withTag({MF_CustomMaterials: {main_metal: "refinedwood"}}),
<item:minefantasy2:ammo_box_basic>.withTag({MF_CustomMaterials: {main_metal: "refinedwood"}}),
<item:minefantasy2:MF_Aid_bandage_crude>,
<item:minefantasy2:MF_Aid_bandage_wool>,
<item:minefantasy2:MF_Aid_bandage_tough>,
<item:minefantasy2:MF_ResearchBook>,
<item:minefantasy2:MF_Com_skillbook_artisanry>,
<item:minefantasy2:MF_Com_skillbook_construction>,
<item:minefantasy2:MF_Com_skillbook_provisioning>,
<item:minefantasy2:MF_Com_skillbook_engineering>,
<item:minefantasy2:MF_Com_skillbook_combat>,
<item:minefantasy2:MF_Com_skillbook_artisanry2>,
<item:minefantasy2:MF_Com_skillbook_construction2>,
<item:minefantasy2:MF_Com_skillbook_provisioning2>,
<item:minefantasy2:MF_Com_skillbook_engineering2>,
<item:minefantasy2:MF_Com_skillbook_combat2>,
<item:minefantasy2:engin_anvil_tools>,
<item:minefantasy2:spyglass>,
<item:minefantasy2:loot_sack>,
<item:minefantasy2:loot_sack_uc>,
<item:minefantasy2:loot_sack_rare>,
<item:minefantasy2:paint_brush>,
<item:minefantasy2:PlaceWorldGenMF>,
<item:minefantasy2:PlaceWorldGenMF:1>,
<item:minefantasy2:PlaceWorldGenMF:2>,
<item:minefantasy2:MF_Com_MF_Spawner>,
<item:minefantasy2:MF_Com_MF_Spawner:1>,
<item:minefantasy2:MF_Com_MF_Spawner:2>,
<item:minefantasy2:MF_Com_MF_Spawner:3>,
<item:minefantasy2:MF_Com_clay_pot>,
<item:minefantasy2:MF_Com_clay_pot>,
<item:minefantasy2:MF_Com_clay_pot_uncooked>,
<item:minefantasy2:MF_Com_clay_pot_uncooked>,
<item:minefantasy2:MF_Com_magma_cream_refined>,
<item:minefantasy2:MF_Com_magma_cream_refined>,
<item:minefantasy2:MF_Com_bomb_fuse>,
<item:minefantasy2:MF_Com_bomb_fuse>,
<item:minefantasy2:MF_Com_bomb_fuse_long>,
<item:minefantasy2:MF_Com_bomb_fuse_long>,
<item:minefantasy2:MF_Com_bomb_casing_uncooked>,
<item:minefantasy2:MF_Com_bomb_casing_uncooked>,
<item:minefantasy2:MF_Com_bomb_casing>,
<item:minefantasy2:MF_Com_bomb_casing>,
<item:minefantasy2:MF_Com_mine_casing_uncooked>,
<item:minefantasy2:MF_Com_mine_casing_uncooked>,
<item:minefantasy2:MF_Com_mine_casing>,
<item:minefantasy2:MF_Com_mine_casing>,
<item:minefantasy2:MF_Com_bomb_casing_iron>,
<item:minefantasy2:MF_Com_bomb_casing_iron>,
<item:minefantasy2:MF_Com_mine_casing_iron>,
<item:minefantasy2:MF_Com_mine_casing_iron>,
<item:minefantasy2:MF_Com_bomb_casing_obsidian>,
<item:minefantasy2:MF_Com_bomb_casing_obsidian>,
<item:minefantasy2:MF_Com_mine_casing_obsidian>,
<item:minefantasy2:MF_Com_mine_casing_obsidian>,
<item:minefantasy2:MF_Com_bomb_casing_crystal>,
<item:minefantasy2:MF_Com_bomb_casing_crystal>,
<item:minefantasy2:MF_Com_mine_casing_crystal>,
<item:minefantasy2:MF_Com_mine_casing_crystal>,
<item:minefantasy2:MF_Com_bomb_casing_arrow>,
<item:minefantasy2:MF_Com_bomb_casing_arrow>,
<item:minefantasy2:MF_Com_bomb_casing_bolt>,
<item:minefantasy2:MF_Com_bomb_casing_bolt>,
<item:minefantasy2:MF_Com_diamond_shards>,
<item:minefantasy2:MF_Com_talisman_lesser>,
<item:minefantasy2:MF_Com_dragon_heart>,
<item:minefantasy2:MF_Com_talisman_lesser>,
<item:minefantasy2:MF_Com_talisman_greater>,
<item:minefantasy2:MF_Com_talisman_greater>,
<item:minefantasy2:MF_Com_cogwork_shaft>,
<item:minefantasy2:MF_Com_cogwork_shaft>,
<item:minefantasy2:MF_Com_cross_stock_wood>,
<item:minefantasy2:MF_Com_cross_stock_wood>,
<item:minefantasy2:MF_Com_cross_stock_iron>,
<item:minefantasy2:MF_Com_cross_stock_iron>,
<item:minefantasy2:MF_Com_cross_handle_wood>,
<item:minefantasy2:MF_Com_cross_handle_wood>,
<item:minefantasy2:MF_Com_cross_arms_basic>,
<item:minefantasy2:MF_Com_cross_arms_basic>,
<item:minefantasy2:MF_Com_cross_arms_light>,
<item:minefantasy2:MF_Com_cross_arms_light>,
<item:minefantasy2:MF_Com_cross_arms_heavy>,
<item:minefantasy2:MF_Com_cross_arms_heavy>,
<item:minefantasy2:MF_Com_cross_arms_advanced>,
<item:minefantasy2:MF_Com_cross_arms_advanced>,
<item:minefantasy2:MF_Com_cross_bayonet>,
<item:minefantasy2:MF_Com_cross_bayonet>,
<item:minefantasy2:MF_Com_cross_ammo>,
<item:minefantasy2:MF_Com_cross_ammo>,
<item:minefantasy2:MF_Com_cross_scope>,
<item:minefantasy2:MF_Com_cross_scope>,
<item:minefantasy2:custom_arrowhead>.withTag({MF_CustomMaterials: {main_metal: "Tin"}}),
<item:minefantasy2:custom_bodkinhead>.withTag({MF_CustomMaterials: {main_metal: "Copper"}}),
<item:minefantasy2:custom_arrowhead>.withTag({MF_CustomMaterials: {main_metal: "Copper"}}),
<item:minefantasy2:custom_arrowhead>.withTag({MF_CustomMaterials: {main_metal: "Bronze"}}),
<item:minefantasy2:custom_arrowhead>.withTag({MF_CustomMaterials: {main_metal: "Iron"}}),
<item:minefantasy2:custom_arrowhead>.withTag({MF_CustomMaterials: {main_metal: "PigIron"}}),
<item:minefantasy2:custom_arrowhead>.withTag({MF_CustomMaterials: {main_metal: "Steel"}}),
<item:minefantasy2:custom_bodkinhead>.withTag({MF_CustomMaterials: {main_metal: "Tin"}}),
<item:minefantasy2:custom_bodkinhead>.withTag({MF_CustomMaterials: {main_metal: "Copper"}}),
<item:minefantasy2:custom_bodkinhead>.withTag({MF_CustomMaterials: {main_metal: "Bronze"}}),
<item:minefantasy2:custom_bodkinhead>.withTag({MF_CustomMaterials: {main_metal: "Iron"}}),
<item:minefantasy2:custom_bodkinhead>.withTag({MF_CustomMaterials: {main_metal: "PigIron"}}),
<item:minefantasy2:custom_bodkinhead>.withTag({MF_CustomMaterials: {main_metal: "Steel"}}),
<item:minefantasy2:custom_broadhead>.withTag({MF_CustomMaterials: {main_metal: "Tin"}}),
<item:minefantasy2:custom_broadhead>.withTag({MF_CustomMaterials: {main_metal: "Copper"}}),
<item:minefantasy2:custom_broadhead>.withTag({MF_CustomMaterials: {main_metal: "Bronze"}}),
<item:minefantasy2:custom_broadhead>.withTag({MF_CustomMaterials: {main_metal: "Iron"}}),
<item:minefantasy2:custom_broadhead>.withTag({MF_CustomMaterials: {main_metal: "PigIron"}}),
<item:minefantasy2:custom_broadhead>.withTag({MF_CustomMaterials: {main_metal: "Steel"}}),
<item:minefantasy2:custom_cogwork_armour>.withTag({MF_CustomMaterials: {main_metal: "Tin"}}),
<item:minefantasy2:custom_cogwork_armour>.withTag({MF_CustomMaterials: {main_metal: "Copper"}}),
<item:minefantasy2:custom_cogwork_armour>.withTag({MF_CustomMaterials: {main_metal: "Bronze"}}),
<item:minefantasy2:custom_cogwork_armour>.withTag({MF_CustomMaterials: {main_metal: "Iron"}}),
<item:minefantasy2:custom_cogwork_armour>.withTag({MF_CustomMaterials: {main_metal: "PigIron"}}),
<item:minefantasy2:custom_cogwork_armour>.withTag({MF_CustomMaterials: {main_metal: "Steel"}}),
<item:minefantasy2:MF_Com_copper_coin>,
<item:minefantasy2:MF_Com_copper_coin>,
<item:minefantasy2:MF_Com_silver_coin>,
<item:minefantasy2:MF_Com_silver_coin>,
<item:minefantasy2:MF_Com_gold_coin>,
<item:minefantasy2:MF_Com_gold_coin>,
<item:minefantasy2:MF_Com_cogwork_pulley>,
<item:minefantasy2:artefact_any>,
<item:minefantasy2:artefact_any:1>,
<item:minefantasy2:artefact_any:2>,
<item:minefantasy2:artefact_any:3>,
<item:minefantasy2:artefact_any:4>,
<item:minefantasy2:artefact_any:5>,
<item:minefantasy2:artefact_any:6>,
<item:minefantasy2:artefact_any:7>,
<item:minefantasy2:artefact_any:8>,
<item:minefantasy2:artefact_any:9>,
<item:minefantasy2:MF_Com_ornate_items>,
<item:minefantasy2:MF_Com_ornate_items>,
<item:minefantasy2:standard_pick>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_pick>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_pick>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_pick>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_pick>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_pick>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_axe>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_axe>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_axe>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_axe>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_axe>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_axe>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spade>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spade>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spade>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spade>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spade>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spade>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hoe>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hoe>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hoe>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hoe>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hoe>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hoe>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_handpick>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_handpick>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_handpick>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_handpick>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_handpick>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_handpick>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvypick>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvypick>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvypick>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvypick>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvypick>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvypick>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_trow>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyshovel>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyshovel>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyshovel>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyshovel>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyshovel>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyshovel>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_scythe>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_scythe>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_scythe>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_scythe>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_scythe>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_scythe>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_mattock>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_mattock>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_mattock>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_mattock>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_mattock>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_mattock>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_lumber>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_lumber>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_lumber>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_lumber>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_lumber>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_lumber>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hammer>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hammer>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hammer>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hammer>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hammer>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyhammer>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyhammer>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyhammer>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyhammer>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyhammer>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_hvyhammer>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_shears>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_shears>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_shears>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_shears>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_shears>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_shears>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_knife>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_knife>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_knife>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_knife>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_knife>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_needle>.withTag({MF_CustomMaterials: {main_metal: "tin"}}),
<item:minefantasy2:standard_needle>.withTag({MF_CustomMaterials: {main_metal: "copper"}}),
<item:minefantasy2:standard_needle>.withTag({MF_CustomMaterials: {main_metal: "bronze"}}),
<item:minefantasy2:standard_needle>.withTag({MF_CustomMaterials: {main_metal: "iron"}}),
<item:minefantasy2:standard_needle>.withTag({MF_CustomMaterials: {main_metal: "pigiron"}}),
<item:minefantasy2:standard_needle>.withTag({MF_CustomMaterials: {main_metal: "steel"}}),
<item:minefantasy2:standard_hammer>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_knife>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_saw>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_saw>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_saw>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_saw>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_saw>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_saw>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_tongs>.withTag({MF_CustomMaterials: {main_metal: "tin"}}),
<item:minefantasy2:standard_tongs>.withTag({MF_CustomMaterials: {main_metal: "copper"}}),
<item:minefantasy2:standard_tongs>.withTag({MF_CustomMaterials: {main_metal: "bronze"}}),
<item:minefantasy2:standard_tongs>.withTag({MF_CustomMaterials: {main_metal: "iron"}}),
<item:minefantasy2:standard_tongs>.withTag({MF_CustomMaterials: {main_metal: "pigiron"}}),
<item:minefantasy2:standard_tongs>.withTag({MF_CustomMaterials: {main_metal: "steel"}}),
<item:minefantasy2:standard_spanner>.withTag({MF_CustomMaterials: {main_metal: "tin", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spanner>.withTag({MF_CustomMaterials: {main_metal: "copper", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spanner>.withTag({MF_CustomMaterials: {main_metal: "bronze", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spanner>.withTag({MF_CustomMaterials: {main_metal: "iron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spanner>.withTag({MF_CustomMaterials: {main_metal: "pigiron", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spanner>.withTag({MF_CustomMaterials: {main_metal: "steel", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spoon>.withTag({MF_CustomMaterials: {main_metal: "oakwood", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spoon>.withTag({MF_CustomMaterials: {main_metal: "ironbarkwood", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_spoon>.withTag({MF_CustomMaterials: {main_metal: "ebonywood", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_mallet>.withTag({MF_CustomMaterials: {main_metal: "oakwood", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_mallet>.withTag({MF_CustomMaterials: {main_metal: "ironbarkwood", haft_wood: "oakwood"}}),
<item:minefantasy2:standard_mallet>.withTag({MF_CustomMaterials: {main_metal: "ebonywood", haft_wood: "oakwood"}}),
<item:minefantasy2:MF_Com_ingotEncrusted>,
<item:minefantasy2:MF_Com_ingotRedSteel>,
<item:minefantasy2:MF_Com_ingotRedSteelWeak>,
<item:minefantasy2:MF_Com_ingotBlueSteelWeak>,
<item:minefantasy2:MF_Com_ingotBlueSteelWeak>,
<item:minefantasy2:MF_Com_ingotAdamantium>,
<item:minefantasy2:MF_Com_ingotBlueSteel>,
<item:minefantasy2:MF_Com_ingotMithril>,
<item:minefantasy2:MF_Com_ingotIgnotumite>,
<item:minefantasy2:MF_Com_ingotMithium>,
<item:minefantasy2:MF_Com_ingotEnder>,
<item:minefantasy2:MF_Com_ingotTungsten>,
<item:minefantasy2:food_box_basic>.withTag({MF_CustomMaterials: {main_metal: "refinedwood"}})
] as IItemStack[];

for item in removals {
    NEI.hide(item);
    //I feel like the Carpenter is choking but lawl
    Carpenter.removeRecipe(item);
    Anvil.removeRecipe(item);
}
