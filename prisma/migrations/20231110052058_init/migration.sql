-- CreateTable
CREATE TABLE
  "visions" (
    "id" INTEGER NOT NULL,
    "japanese" VARCHAR(100) NOT NULL,
    "english" VARCHAR(100) NOT NULL,
    CONSTRAINT "visions_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "weapon_types" (
    "id" INTEGER NOT NULL,
    "japanese" VARCHAR(100) NOT NULL,
    "english" VARCHAR(100) NOT NULL,
    CONSTRAINT "weapon_types_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "genders" (
    "id" INTEGER NOT NULL,
    "japanese" VARCHAR(100) NOT NULL,
    "english" VARCHAR(100) NOT NULL,
    CONSTRAINT "genders_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "regions" (
    "id" INTEGER NOT NULL,
    "japanese" VARCHAR(100) NOT NULL,
    "english" VARCHAR(100) NOT NULL,
    CONSTRAINT "regions_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "stat_names" (
    "id" INTEGER NOT NULL,
    "japanese" VARCHAR(100) NOT NULL,
    "english" VARCHAR(100) NOT NULL,
    CONSTRAINT "stat_names_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "elements" (
    "id" INTEGER NOT NULL,
    "japanese" VARCHAR(100) NOT NULL,
    "english" VARCHAR(100) NOT NULL,
    CONSTRAINT "elements_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "attack_types" (
    "id" INTEGER NOT NULL,
    "japanese" VARCHAR(100) NOT NULL,
    "english" VARCHAR(100) NOT NULL,
    CONSTRAINT "attack_types_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "characters" (
    "id" INTEGER NOT NULL,
    "vision_id" INTEGER NOT NULL,
    "weapon_type_id" INTEGER NOT NULL,
    "gender_id" INTEGER NOT NULL,
    "region_id" INTEGER NOT NULL,
    "ascension_bonus_stat_id" INTEGER NOT NULL,
    "name_japanese" VARCHAR(100) NOT NULL,
    "name_english" VARCHAR(100) NOT NULL,
    "title" VARCHAR(100) NOT NULL,
    "description" VARCHAR(1000) NOT NULL,
    "star" INTEGER NOT NULL,
    "location" VARCHAR(100) NOT NULL,
    "constellation_title" VARCHAR(100) NOT NULL,
    CONSTRAINT "characters_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "normal_attacks" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(1000) NOT NULL,
    CONSTRAINT "normal_attacks_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "elemental_skills" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(1000) NOT NULL,
    "max_qty" INTEGER NOT NULL,
    CONSTRAINT "elemental_skills_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "elemental_bursts" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(1000) NOT NULL,
    "cost" INTEGER NOT NULL,
    CONSTRAINT "elemental_bursts_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "passive_talents" (
    "id" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(1000) NOT NULL,
    CONSTRAINT "passive_talents_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "constellations" (
    "id" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "rank" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(1000) NOT NULL,
    CONSTRAINT "constellations_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "birthdays" (
    "character_id" INTEGER NOT NULL,
    "month" INTEGER NOT NULL,
    "date" INTEGER NOT NULL,
    CONSTRAINT "birthdays_pkey" PRIMARY KEY ("character_id")
  );

-- CreateTable
CREATE TABLE
  "character_titles" (
    "character_id" INTEGER NOT NULL,
    "value_text" VARCHAR(100) NOT NULL,
    CONSTRAINT "character_titles_pkey" PRIMARY KEY ("character_id")
  );

-- CreateTable
CREATE TABLE
  "character_locations" (
    "character_id" INTEGER NOT NULL,
    "value_text" VARCHAR(100) NOT NULL,
    CONSTRAINT "character_locations_pkey" PRIMARY KEY ("character_id")
  );

-- CreateTable
CREATE TABLE
  "character_base_hp_data" (
    "character_id" INTEGER NOT NULL,
    "level1_20" DECIMAL(9, 4) NOT NULL,
    "level2_20" DECIMAL(9, 4) NOT NULL,
    "level3_20" DECIMAL(9, 4) NOT NULL,
    "level4_20" DECIMAL(9, 4) NOT NULL,
    "level5_20" DECIMAL(9, 4) NOT NULL,
    "level6_20" DECIMAL(9, 4) NOT NULL,
    "level7_20" DECIMAL(9, 4) NOT NULL,
    "level8_20" DECIMAL(9, 4) NOT NULL,
    "level9_20" DECIMAL(9, 4) NOT NULL,
    "level10_20" DECIMAL(9, 4) NOT NULL,
    "level11_20" DECIMAL(9, 4) NOT NULL,
    "level12_20" DECIMAL(9, 4) NOT NULL,
    "level13_20" DECIMAL(9, 4) NOT NULL,
    "level14_20" DECIMAL(9, 4) NOT NULL,
    "level15_20" DECIMAL(9, 4) NOT NULL,
    "level16_20" DECIMAL(9, 4) NOT NULL,
    "level17_20" DECIMAL(9, 4) NOT NULL,
    "level18_20" DECIMAL(9, 4) NOT NULL,
    "level19_20" DECIMAL(9, 4) NOT NULL,
    "level20_20" DECIMAL(9, 4) NOT NULL,
    "level20_40" DECIMAL(9, 4) NOT NULL,
    "level21_40" DECIMAL(9, 4) NOT NULL,
    "level22_40" DECIMAL(9, 4) NOT NULL,
    "level23_40" DECIMAL(9, 4) NOT NULL,
    "level24_40" DECIMAL(9, 4) NOT NULL,
    "level25_40" DECIMAL(9, 4) NOT NULL,
    "level26_40" DECIMAL(9, 4) NOT NULL,
    "level27_40" DECIMAL(9, 4) NOT NULL,
    "level28_40" DECIMAL(9, 4) NOT NULL,
    "level29_40" DECIMAL(9, 4) NOT NULL,
    "level30_40" DECIMAL(9, 4) NOT NULL,
    "level31_40" DECIMAL(9, 4) NOT NULL,
    "level32_40" DECIMAL(9, 4) NOT NULL,
    "level33_40" DECIMAL(9, 4) NOT NULL,
    "level34_40" DECIMAL(9, 4) NOT NULL,
    "level35_40" DECIMAL(9, 4) NOT NULL,
    "level36_40" DECIMAL(9, 4) NOT NULL,
    "level37_40" DECIMAL(9, 4) NOT NULL,
    "level38_40" DECIMAL(9, 4) NOT NULL,
    "level39_40" DECIMAL(9, 4) NOT NULL,
    "level40_40" DECIMAL(9, 4) NOT NULL,
    "level40_50" DECIMAL(9, 4) NOT NULL,
    "level41_50" DECIMAL(9, 4) NOT NULL,
    "level42_50" DECIMAL(9, 4) NOT NULL,
    "level43_50" DECIMAL(9, 4) NOT NULL,
    "level44_50" DECIMAL(9, 4) NOT NULL,
    "level45_50" DECIMAL(9, 4) NOT NULL,
    "level46_50" DECIMAL(9, 4) NOT NULL,
    "level47_50" DECIMAL(9, 4) NOT NULL,
    "level48_50" DECIMAL(9, 4) NOT NULL,
    "level49_50" DECIMAL(9, 4) NOT NULL,
    "level50_50" DECIMAL(9, 4) NOT NULL,
    "level50_60" DECIMAL(9, 4) NOT NULL,
    "level51_60" DECIMAL(9, 4) NOT NULL,
    "level52_60" DECIMAL(9, 4) NOT NULL,
    "level53_60" DECIMAL(9, 4) NOT NULL,
    "level54_60" DECIMAL(9, 4) NOT NULL,
    "level55_60" DECIMAL(9, 4) NOT NULL,
    "level56_60" DECIMAL(9, 4) NOT NULL,
    "level57_60" DECIMAL(9, 4) NOT NULL,
    "level58_60" DECIMAL(9, 4) NOT NULL,
    "level59_60" DECIMAL(9, 4) NOT NULL,
    "level60_60" DECIMAL(9, 4) NOT NULL,
    "level60_70" DECIMAL(9, 4) NOT NULL,
    "level61_70" DECIMAL(9, 4) NOT NULL,
    "level62_70" DECIMAL(9, 4) NOT NULL,
    "level63_70" DECIMAL(9, 4) NOT NULL,
    "level64_70" DECIMAL(9, 4) NOT NULL,
    "level65_70" DECIMAL(9, 4) NOT NULL,
    "level66_70" DECIMAL(9, 4) NOT NULL,
    "level67_70" DECIMAL(9, 4) NOT NULL,
    "level68_70" DECIMAL(9, 4) NOT NULL,
    "level69_70" DECIMAL(9, 4) NOT NULL,
    "level70_70" DECIMAL(9, 4) NOT NULL,
    "level70_80" DECIMAL(9, 4) NOT NULL,
    "level71_80" DECIMAL(9, 4) NOT NULL,
    "level72_80" DECIMAL(9, 4) NOT NULL,
    "level73_80" DECIMAL(9, 4) NOT NULL,
    "level74_80" DECIMAL(9, 4) NOT NULL,
    "level75_80" DECIMAL(9, 4) NOT NULL,
    "level76_80" DECIMAL(9, 4) NOT NULL,
    "level77_80" DECIMAL(9, 4) NOT NULL,
    "level78_80" DECIMAL(9, 4) NOT NULL,
    "level79_80" DECIMAL(9, 4) NOT NULL,
    "level80_80" DECIMAL(9, 4) NOT NULL,
    "level80_90" DECIMAL(9, 4) NOT NULL,
    "level81_90" DECIMAL(9, 4) NOT NULL,
    "level82_90" DECIMAL(9, 4) NOT NULL,
    "level83_90" DECIMAL(9, 4) NOT NULL,
    "level84_90" DECIMAL(9, 4) NOT NULL,
    "level85_90" DECIMAL(9, 4) NOT NULL,
    "level86_90" DECIMAL(9, 4) NOT NULL,
    "level87_90" DECIMAL(9, 4) NOT NULL,
    "level88_90" DECIMAL(9, 4) NOT NULL,
    "level89_90" DECIMAL(9, 4) NOT NULL,
    "level90_90" DECIMAL(9, 4) NOT NULL,
    CONSTRAINT "character_base_hp_data_pkey" PRIMARY KEY ("character_id")
  );

-- CreateTable
CREATE TABLE
  "character_base_attack_data" (
    "character_id" INTEGER NOT NULL,
    "level1_20" DECIMAL(9, 4) NOT NULL,
    "level2_20" DECIMAL(9, 4) NOT NULL,
    "level3_20" DECIMAL(9, 4) NOT NULL,
    "level4_20" DECIMAL(9, 4) NOT NULL,
    "level5_20" DECIMAL(9, 4) NOT NULL,
    "level6_20" DECIMAL(9, 4) NOT NULL,
    "level7_20" DECIMAL(9, 4) NOT NULL,
    "level8_20" DECIMAL(9, 4) NOT NULL,
    "level9_20" DECIMAL(9, 4) NOT NULL,
    "level10_20" DECIMAL(9, 4) NOT NULL,
    "level11_20" DECIMAL(9, 4) NOT NULL,
    "level12_20" DECIMAL(9, 4) NOT NULL,
    "level13_20" DECIMAL(9, 4) NOT NULL,
    "level14_20" DECIMAL(9, 4) NOT NULL,
    "level15_20" DECIMAL(9, 4) NOT NULL,
    "level16_20" DECIMAL(9, 4) NOT NULL,
    "level17_20" DECIMAL(9, 4) NOT NULL,
    "level18_20" DECIMAL(9, 4) NOT NULL,
    "level19_20" DECIMAL(9, 4) NOT NULL,
    "level20_20" DECIMAL(9, 4) NOT NULL,
    "level20_40" DECIMAL(9, 4) NOT NULL,
    "level21_40" DECIMAL(9, 4) NOT NULL,
    "level22_40" DECIMAL(9, 4) NOT NULL,
    "level23_40" DECIMAL(9, 4) NOT NULL,
    "level24_40" DECIMAL(9, 4) NOT NULL,
    "level25_40" DECIMAL(9, 4) NOT NULL,
    "level26_40" DECIMAL(9, 4) NOT NULL,
    "level27_40" DECIMAL(9, 4) NOT NULL,
    "level28_40" DECIMAL(9, 4) NOT NULL,
    "level29_40" DECIMAL(9, 4) NOT NULL,
    "level30_40" DECIMAL(9, 4) NOT NULL,
    "level31_40" DECIMAL(9, 4) NOT NULL,
    "level32_40" DECIMAL(9, 4) NOT NULL,
    "level33_40" DECIMAL(9, 4) NOT NULL,
    "level34_40" DECIMAL(9, 4) NOT NULL,
    "level35_40" DECIMAL(9, 4) NOT NULL,
    "level36_40" DECIMAL(9, 4) NOT NULL,
    "level37_40" DECIMAL(9, 4) NOT NULL,
    "level38_40" DECIMAL(9, 4) NOT NULL,
    "level39_40" DECIMAL(9, 4) NOT NULL,
    "level40_40" DECIMAL(9, 4) NOT NULL,
    "level40_50" DECIMAL(9, 4) NOT NULL,
    "level41_50" DECIMAL(9, 4) NOT NULL,
    "level42_50" DECIMAL(9, 4) NOT NULL,
    "level43_50" DECIMAL(9, 4) NOT NULL,
    "level44_50" DECIMAL(9, 4) NOT NULL,
    "level45_50" DECIMAL(9, 4) NOT NULL,
    "level46_50" DECIMAL(9, 4) NOT NULL,
    "level47_50" DECIMAL(9, 4) NOT NULL,
    "level48_50" DECIMAL(9, 4) NOT NULL,
    "level49_50" DECIMAL(9, 4) NOT NULL,
    "level50_50" DECIMAL(9, 4) NOT NULL,
    "level50_60" DECIMAL(9, 4) NOT NULL,
    "level51_60" DECIMAL(9, 4) NOT NULL,
    "level52_60" DECIMAL(9, 4) NOT NULL,
    "level53_60" DECIMAL(9, 4) NOT NULL,
    "level54_60" DECIMAL(9, 4) NOT NULL,
    "level55_60" DECIMAL(9, 4) NOT NULL,
    "level56_60" DECIMAL(9, 4) NOT NULL,
    "level57_60" DECIMAL(9, 4) NOT NULL,
    "level58_60" DECIMAL(9, 4) NOT NULL,
    "level59_60" DECIMAL(9, 4) NOT NULL,
    "level60_60" DECIMAL(9, 4) NOT NULL,
    "level60_70" DECIMAL(9, 4) NOT NULL,
    "level61_70" DECIMAL(9, 4) NOT NULL,
    "level62_70" DECIMAL(9, 4) NOT NULL,
    "level63_70" DECIMAL(9, 4) NOT NULL,
    "level64_70" DECIMAL(9, 4) NOT NULL,
    "level65_70" DECIMAL(9, 4) NOT NULL,
    "level66_70" DECIMAL(9, 4) NOT NULL,
    "level67_70" DECIMAL(9, 4) NOT NULL,
    "level68_70" DECIMAL(9, 4) NOT NULL,
    "level69_70" DECIMAL(9, 4) NOT NULL,
    "level70_70" DECIMAL(9, 4) NOT NULL,
    "level70_80" DECIMAL(9, 4) NOT NULL,
    "level71_80" DECIMAL(9, 4) NOT NULL,
    "level72_80" DECIMAL(9, 4) NOT NULL,
    "level73_80" DECIMAL(9, 4) NOT NULL,
    "level74_80" DECIMAL(9, 4) NOT NULL,
    "level75_80" DECIMAL(9, 4) NOT NULL,
    "level76_80" DECIMAL(9, 4) NOT NULL,
    "level77_80" DECIMAL(9, 4) NOT NULL,
    "level78_80" DECIMAL(9, 4) NOT NULL,
    "level79_80" DECIMAL(9, 4) NOT NULL,
    "level80_80" DECIMAL(9, 4) NOT NULL,
    "level80_90" DECIMAL(9, 4) NOT NULL,
    "level81_90" DECIMAL(9, 4) NOT NULL,
    "level82_90" DECIMAL(9, 4) NOT NULL,
    "level83_90" DECIMAL(9, 4) NOT NULL,
    "level84_90" DECIMAL(9, 4) NOT NULL,
    "level85_90" DECIMAL(9, 4) NOT NULL,
    "level86_90" DECIMAL(9, 4) NOT NULL,
    "level87_90" DECIMAL(9, 4) NOT NULL,
    "level88_90" DECIMAL(9, 4) NOT NULL,
    "level89_90" DECIMAL(9, 4) NOT NULL,
    "level90_90" DECIMAL(9, 4) NOT NULL,
    CONSTRAINT "character_base_attack_data_pkey" PRIMARY KEY ("character_id")
  );

-- CreateTable
CREATE TABLE
  "character_base_defense_data" (
    "character_id" INTEGER NOT NULL,
    "level1_20" DECIMAL(9, 4) NOT NULL,
    "level2_20" DECIMAL(9, 4) NOT NULL,
    "level3_20" DECIMAL(9, 4) NOT NULL,
    "level4_20" DECIMAL(9, 4) NOT NULL,
    "level5_20" DECIMAL(9, 4) NOT NULL,
    "level6_20" DECIMAL(9, 4) NOT NULL,
    "level7_20" DECIMAL(9, 4) NOT NULL,
    "level8_20" DECIMAL(9, 4) NOT NULL,
    "level9_20" DECIMAL(9, 4) NOT NULL,
    "level10_20" DECIMAL(9, 4) NOT NULL,
    "level11_20" DECIMAL(9, 4) NOT NULL,
    "level12_20" DECIMAL(9, 4) NOT NULL,
    "level13_20" DECIMAL(9, 4) NOT NULL,
    "level14_20" DECIMAL(9, 4) NOT NULL,
    "level15_20" DECIMAL(9, 4) NOT NULL,
    "level16_20" DECIMAL(9, 4) NOT NULL,
    "level17_20" DECIMAL(9, 4) NOT NULL,
    "level18_20" DECIMAL(9, 4) NOT NULL,
    "level19_20" DECIMAL(9, 4) NOT NULL,
    "level20_20" DECIMAL(9, 4) NOT NULL,
    "level20_40" DECIMAL(9, 4) NOT NULL,
    "level21_40" DECIMAL(9, 4) NOT NULL,
    "level22_40" DECIMAL(9, 4) NOT NULL,
    "level23_40" DECIMAL(9, 4) NOT NULL,
    "level24_40" DECIMAL(9, 4) NOT NULL,
    "level25_40" DECIMAL(9, 4) NOT NULL,
    "level26_40" DECIMAL(9, 4) NOT NULL,
    "level27_40" DECIMAL(9, 4) NOT NULL,
    "level28_40" DECIMAL(9, 4) NOT NULL,
    "level29_40" DECIMAL(9, 4) NOT NULL,
    "level30_40" DECIMAL(9, 4) NOT NULL,
    "level31_40" DECIMAL(9, 4) NOT NULL,
    "level32_40" DECIMAL(9, 4) NOT NULL,
    "level33_40" DECIMAL(9, 4) NOT NULL,
    "level34_40" DECIMAL(9, 4) NOT NULL,
    "level35_40" DECIMAL(9, 4) NOT NULL,
    "level36_40" DECIMAL(9, 4) NOT NULL,
    "level37_40" DECIMAL(9, 4) NOT NULL,
    "level38_40" DECIMAL(9, 4) NOT NULL,
    "level39_40" DECIMAL(9, 4) NOT NULL,
    "level40_40" DECIMAL(9, 4) NOT NULL,
    "level40_50" DECIMAL(9, 4) NOT NULL,
    "level41_50" DECIMAL(9, 4) NOT NULL,
    "level42_50" DECIMAL(9, 4) NOT NULL,
    "level43_50" DECIMAL(9, 4) NOT NULL,
    "level44_50" DECIMAL(9, 4) NOT NULL,
    "level45_50" DECIMAL(9, 4) NOT NULL,
    "level46_50" DECIMAL(9, 4) NOT NULL,
    "level47_50" DECIMAL(9, 4) NOT NULL,
    "level48_50" DECIMAL(9, 4) NOT NULL,
    "level49_50" DECIMAL(9, 4) NOT NULL,
    "level50_50" DECIMAL(9, 4) NOT NULL,
    "level50_60" DECIMAL(9, 4) NOT NULL,
    "level51_60" DECIMAL(9, 4) NOT NULL,
    "level52_60" DECIMAL(9, 4) NOT NULL,
    "level53_60" DECIMAL(9, 4) NOT NULL,
    "level54_60" DECIMAL(9, 4) NOT NULL,
    "level55_60" DECIMAL(9, 4) NOT NULL,
    "level56_60" DECIMAL(9, 4) NOT NULL,
    "level57_60" DECIMAL(9, 4) NOT NULL,
    "level58_60" DECIMAL(9, 4) NOT NULL,
    "level59_60" DECIMAL(9, 4) NOT NULL,
    "level60_60" DECIMAL(9, 4) NOT NULL,
    "level60_70" DECIMAL(9, 4) NOT NULL,
    "level61_70" DECIMAL(9, 4) NOT NULL,
    "level62_70" DECIMAL(9, 4) NOT NULL,
    "level63_70" DECIMAL(9, 4) NOT NULL,
    "level64_70" DECIMAL(9, 4) NOT NULL,
    "level65_70" DECIMAL(9, 4) NOT NULL,
    "level66_70" DECIMAL(9, 4) NOT NULL,
    "level67_70" DECIMAL(9, 4) NOT NULL,
    "level68_70" DECIMAL(9, 4) NOT NULL,
    "level69_70" DECIMAL(9, 4) NOT NULL,
    "level70_70" DECIMAL(9, 4) NOT NULL,
    "level70_80" DECIMAL(9, 4) NOT NULL,
    "level71_80" DECIMAL(9, 4) NOT NULL,
    "level72_80" DECIMAL(9, 4) NOT NULL,
    "level73_80" DECIMAL(9, 4) NOT NULL,
    "level74_80" DECIMAL(9, 4) NOT NULL,
    "level75_80" DECIMAL(9, 4) NOT NULL,
    "level76_80" DECIMAL(9, 4) NOT NULL,
    "level77_80" DECIMAL(9, 4) NOT NULL,
    "level78_80" DECIMAL(9, 4) NOT NULL,
    "level79_80" DECIMAL(9, 4) NOT NULL,
    "level80_80" DECIMAL(9, 4) NOT NULL,
    "level80_90" DECIMAL(9, 4) NOT NULL,
    "level81_90" DECIMAL(9, 4) NOT NULL,
    "level82_90" DECIMAL(9, 4) NOT NULL,
    "level83_90" DECIMAL(9, 4) NOT NULL,
    "level84_90" DECIMAL(9, 4) NOT NULL,
    "level85_90" DECIMAL(9, 4) NOT NULL,
    "level86_90" DECIMAL(9, 4) NOT NULL,
    "level87_90" DECIMAL(9, 4) NOT NULL,
    "level88_90" DECIMAL(9, 4) NOT NULL,
    "level89_90" DECIMAL(9, 4) NOT NULL,
    "level90_90" DECIMAL(9, 4) NOT NULL,
    CONSTRAINT "character_base_defense_data_pkey" PRIMARY KEY ("character_id")
  );

-- CreateTable
CREATE TABLE
  "character_ascension_bonus_data" (
    "id" INTEGER NOT NULL,
    "influence_stat_id" INTEGER NOT NULL,
    "level1_20" DECIMAL(9, 4) NOT NULL,
    "level2_20" DECIMAL(9, 4) NOT NULL,
    "level3_20" DECIMAL(9, 4) NOT NULL,
    "level4_20" DECIMAL(9, 4) NOT NULL,
    "level5_20" DECIMAL(9, 4) NOT NULL,
    "level6_20" DECIMAL(9, 4) NOT NULL,
    "level7_20" DECIMAL(9, 4) NOT NULL,
    "level8_20" DECIMAL(9, 4) NOT NULL,
    "level9_20" DECIMAL(9, 4) NOT NULL,
    "level10_20" DECIMAL(9, 4) NOT NULL,
    "level11_20" DECIMAL(9, 4) NOT NULL,
    "level12_20" DECIMAL(9, 4) NOT NULL,
    "level13_20" DECIMAL(9, 4) NOT NULL,
    "level14_20" DECIMAL(9, 4) NOT NULL,
    "level15_20" DECIMAL(9, 4) NOT NULL,
    "level16_20" DECIMAL(9, 4) NOT NULL,
    "level17_20" DECIMAL(9, 4) NOT NULL,
    "level18_20" DECIMAL(9, 4) NOT NULL,
    "level19_20" DECIMAL(9, 4) NOT NULL,
    "level20_20" DECIMAL(9, 4) NOT NULL,
    "level20_40" DECIMAL(9, 4) NOT NULL,
    "level21_40" DECIMAL(9, 4) NOT NULL,
    "level22_40" DECIMAL(9, 4) NOT NULL,
    "level23_40" DECIMAL(9, 4) NOT NULL,
    "level24_40" DECIMAL(9, 4) NOT NULL,
    "level25_40" DECIMAL(9, 4) NOT NULL,
    "level26_40" DECIMAL(9, 4) NOT NULL,
    "level27_40" DECIMAL(9, 4) NOT NULL,
    "level28_40" DECIMAL(9, 4) NOT NULL,
    "level29_40" DECIMAL(9, 4) NOT NULL,
    "level30_40" DECIMAL(9, 4) NOT NULL,
    "level31_40" DECIMAL(9, 4) NOT NULL,
    "level32_40" DECIMAL(9, 4) NOT NULL,
    "level33_40" DECIMAL(9, 4) NOT NULL,
    "level34_40" DECIMAL(9, 4) NOT NULL,
    "level35_40" DECIMAL(9, 4) NOT NULL,
    "level36_40" DECIMAL(9, 4) NOT NULL,
    "level37_40" DECIMAL(9, 4) NOT NULL,
    "level38_40" DECIMAL(9, 4) NOT NULL,
    "level39_40" DECIMAL(9, 4) NOT NULL,
    "level40_40" DECIMAL(9, 4) NOT NULL,
    "level40_50" DECIMAL(9, 4) NOT NULL,
    "level41_50" DECIMAL(9, 4) NOT NULL,
    "level42_50" DECIMAL(9, 4) NOT NULL,
    "level43_50" DECIMAL(9, 4) NOT NULL,
    "level44_50" DECIMAL(9, 4) NOT NULL,
    "level45_50" DECIMAL(9, 4) NOT NULL,
    "level46_50" DECIMAL(9, 4) NOT NULL,
    "level47_50" DECIMAL(9, 4) NOT NULL,
    "level48_50" DECIMAL(9, 4) NOT NULL,
    "level49_50" DECIMAL(9, 4) NOT NULL,
    "level50_50" DECIMAL(9, 4) NOT NULL,
    "level50_60" DECIMAL(9, 4) NOT NULL,
    "level51_60" DECIMAL(9, 4) NOT NULL,
    "level52_60" DECIMAL(9, 4) NOT NULL,
    "level53_60" DECIMAL(9, 4) NOT NULL,
    "level54_60" DECIMAL(9, 4) NOT NULL,
    "level55_60" DECIMAL(9, 4) NOT NULL,
    "level56_60" DECIMAL(9, 4) NOT NULL,
    "level57_60" DECIMAL(9, 4) NOT NULL,
    "level58_60" DECIMAL(9, 4) NOT NULL,
    "level59_60" DECIMAL(9, 4) NOT NULL,
    "level60_60" DECIMAL(9, 4) NOT NULL,
    "level60_70" DECIMAL(9, 4) NOT NULL,
    "level61_70" DECIMAL(9, 4) NOT NULL,
    "level62_70" DECIMAL(9, 4) NOT NULL,
    "level63_70" DECIMAL(9, 4) NOT NULL,
    "level64_70" DECIMAL(9, 4) NOT NULL,
    "level65_70" DECIMAL(9, 4) NOT NULL,
    "level66_70" DECIMAL(9, 4) NOT NULL,
    "level67_70" DECIMAL(9, 4) NOT NULL,
    "level68_70" DECIMAL(9, 4) NOT NULL,
    "level69_70" DECIMAL(9, 4) NOT NULL,
    "level70_70" DECIMAL(9, 4) NOT NULL,
    "level70_80" DECIMAL(9, 4) NOT NULL,
    "level71_80" DECIMAL(9, 4) NOT NULL,
    "level72_80" DECIMAL(9, 4) NOT NULL,
    "level73_80" DECIMAL(9, 4) NOT NULL,
    "level74_80" DECIMAL(9, 4) NOT NULL,
    "level75_80" DECIMAL(9, 4) NOT NULL,
    "level76_80" DECIMAL(9, 4) NOT NULL,
    "level77_80" DECIMAL(9, 4) NOT NULL,
    "level78_80" DECIMAL(9, 4) NOT NULL,
    "level79_80" DECIMAL(9, 4) NOT NULL,
    "level80_80" DECIMAL(9, 4) NOT NULL,
    "level80_90" DECIMAL(9, 4) NOT NULL,
    "level81_90" DECIMAL(9, 4) NOT NULL,
    "level82_90" DECIMAL(9, 4) NOT NULL,
    "level83_90" DECIMAL(9, 4) NOT NULL,
    "level84_90" DECIMAL(9, 4) NOT NULL,
    "level85_90" DECIMAL(9, 4) NOT NULL,
    "level86_90" DECIMAL(9, 4) NOT NULL,
    "level87_90" DECIMAL(9, 4) NOT NULL,
    "level88_90" DECIMAL(9, 4) NOT NULL,
    "level89_90" DECIMAL(9, 4) NOT NULL,
    "level90_90" DECIMAL(9, 4) NOT NULL,
    CONSTRAINT "character_ascension_bonus_data_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "weapon_base_attack_data" (
    "weapon_id" INTEGER NOT NULL,
    "level1_20" DECIMAL(9, 4) NOT NULL,
    "level2_20" DECIMAL(9, 4) NOT NULL,
    "level3_20" DECIMAL(9, 4) NOT NULL,
    "level4_20" DECIMAL(9, 4) NOT NULL,
    "level5_20" DECIMAL(9, 4) NOT NULL,
    "level6_20" DECIMAL(9, 4) NOT NULL,
    "level7_20" DECIMAL(9, 4) NOT NULL,
    "level8_20" DECIMAL(9, 4) NOT NULL,
    "level9_20" DECIMAL(9, 4) NOT NULL,
    "level10_20" DECIMAL(9, 4) NOT NULL,
    "level11_20" DECIMAL(9, 4) NOT NULL,
    "level12_20" DECIMAL(9, 4) NOT NULL,
    "level13_20" DECIMAL(9, 4) NOT NULL,
    "level14_20" DECIMAL(9, 4) NOT NULL,
    "level15_20" DECIMAL(9, 4) NOT NULL,
    "level16_20" DECIMAL(9, 4) NOT NULL,
    "level17_20" DECIMAL(9, 4) NOT NULL,
    "level18_20" DECIMAL(9, 4) NOT NULL,
    "level19_20" DECIMAL(9, 4) NOT NULL,
    "level20_20" DECIMAL(9, 4) NOT NULL,
    "level20_40" DECIMAL(9, 4) NOT NULL,
    "level21_40" DECIMAL(9, 4) NOT NULL,
    "level22_40" DECIMAL(9, 4) NOT NULL,
    "level23_40" DECIMAL(9, 4) NOT NULL,
    "level24_40" DECIMAL(9, 4) NOT NULL,
    "level25_40" DECIMAL(9, 4) NOT NULL,
    "level26_40" DECIMAL(9, 4) NOT NULL,
    "level27_40" DECIMAL(9, 4) NOT NULL,
    "level28_40" DECIMAL(9, 4) NOT NULL,
    "level29_40" DECIMAL(9, 4) NOT NULL,
    "level30_40" DECIMAL(9, 4) NOT NULL,
    "level31_40" DECIMAL(9, 4) NOT NULL,
    "level32_40" DECIMAL(9, 4) NOT NULL,
    "level33_40" DECIMAL(9, 4) NOT NULL,
    "level34_40" DECIMAL(9, 4) NOT NULL,
    "level35_40" DECIMAL(9, 4) NOT NULL,
    "level36_40" DECIMAL(9, 4) NOT NULL,
    "level37_40" DECIMAL(9, 4) NOT NULL,
    "level38_40" DECIMAL(9, 4) NOT NULL,
    "level39_40" DECIMAL(9, 4) NOT NULL,
    "level40_40" DECIMAL(9, 4) NOT NULL,
    "level40_50" DECIMAL(9, 4) NOT NULL,
    "level41_50" DECIMAL(9, 4) NOT NULL,
    "level42_50" DECIMAL(9, 4) NOT NULL,
    "level43_50" DECIMAL(9, 4) NOT NULL,
    "level44_50" DECIMAL(9, 4) NOT NULL,
    "level45_50" DECIMAL(9, 4) NOT NULL,
    "level46_50" DECIMAL(9, 4) NOT NULL,
    "level47_50" DECIMAL(9, 4) NOT NULL,
    "level48_50" DECIMAL(9, 4) NOT NULL,
    "level49_50" DECIMAL(9, 4) NOT NULL,
    "level50_50" DECIMAL(9, 4) NOT NULL,
    "level50_60" DECIMAL(9, 4) NOT NULL,
    "level51_60" DECIMAL(9, 4) NOT NULL,
    "level52_60" DECIMAL(9, 4) NOT NULL,
    "level53_60" DECIMAL(9, 4) NOT NULL,
    "level54_60" DECIMAL(9, 4) NOT NULL,
    "level55_60" DECIMAL(9, 4) NOT NULL,
    "level56_60" DECIMAL(9, 4) NOT NULL,
    "level57_60" DECIMAL(9, 4) NOT NULL,
    "level58_60" DECIMAL(9, 4) NOT NULL,
    "level59_60" DECIMAL(9, 4) NOT NULL,
    "level60_60" DECIMAL(9, 4) NOT NULL,
    "level60_70" DECIMAL(9, 4) NOT NULL,
    "level61_70" DECIMAL(9, 4) NOT NULL,
    "level62_70" DECIMAL(9, 4) NOT NULL,
    "level63_70" DECIMAL(9, 4) NOT NULL,
    "level64_70" DECIMAL(9, 4) NOT NULL,
    "level65_70" DECIMAL(9, 4) NOT NULL,
    "level66_70" DECIMAL(9, 4) NOT NULL,
    "level67_70" DECIMAL(9, 4) NOT NULL,
    "level68_70" DECIMAL(9, 4) NOT NULL,
    "level69_70" DECIMAL(9, 4) NOT NULL,
    "level70_70" DECIMAL(9, 4) NOT NULL,
    "level70_80" DECIMAL(9, 4) NOT NULL,
    "level71_80" DECIMAL(9, 4) NOT NULL,
    "level72_80" DECIMAL(9, 4) NOT NULL,
    "level73_80" DECIMAL(9, 4) NOT NULL,
    "level74_80" DECIMAL(9, 4) NOT NULL,
    "level75_80" DECIMAL(9, 4) NOT NULL,
    "level76_80" DECIMAL(9, 4) NOT NULL,
    "level77_80" DECIMAL(9, 4) NOT NULL,
    "level78_80" DECIMAL(9, 4) NOT NULL,
    "level79_80" DECIMAL(9, 4) NOT NULL,
    "level80_80" DECIMAL(9, 4) NOT NULL,
    "level80_90" DECIMAL(9, 4) NOT NULL,
    "level81_90" DECIMAL(9, 4) NOT NULL,
    "level82_90" DECIMAL(9, 4) NOT NULL,
    "level83_90" DECIMAL(9, 4) NOT NULL,
    "level84_90" DECIMAL(9, 4) NOT NULL,
    "level85_90" DECIMAL(9, 4) NOT NULL,
    "level86_90" DECIMAL(9, 4) NOT NULL,
    "level87_90" DECIMAL(9, 4) NOT NULL,
    "level88_90" DECIMAL(9, 4) NOT NULL,
    "level89_90" DECIMAL(9, 4) NOT NULL,
    "level90_90" DECIMAL(9, 4) NOT NULL,
    CONSTRAINT "weapon_base_attack_data_pkey" PRIMARY KEY ("weapon_id")
  );

-- CreateTable
CREATE TABLE
  "weapons" (
    "id" INTEGER NOT NULL,
    "weapon_type_id" INTEGER NOT NULL,
    "sub_stat_id" INTEGER NOT NULL,
    "base_attack" INTEGER NOT NULL,
    "name_japanese" VARCHAR(100) NOT NULL,
    "name_english" VARCHAR(100) NOT NULL,
    "description" VARCHAR(1000) NOT NULL,
    "star" INTEGER NOT NULL,
    CONSTRAINT "weapons_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "weapon_sub_stat_data" (
    "id" INTEGER NOT NULL,
    "sub_stat_id" INTEGER NOT NULL,
    "base_attack" INTEGER NOT NULL,
    "level1_20" DECIMAL(9, 4) NOT NULL,
    "level2_20" DECIMAL(9, 4) NOT NULL,
    "level3_20" DECIMAL(9, 4) NOT NULL,
    "level4_20" DECIMAL(9, 4) NOT NULL,
    "level5_20" DECIMAL(9, 4) NOT NULL,
    "level6_20" DECIMAL(9, 4) NOT NULL,
    "level7_20" DECIMAL(9, 4) NOT NULL,
    "level8_20" DECIMAL(9, 4) NOT NULL,
    "level9_20" DECIMAL(9, 4) NOT NULL,
    "level10_20" DECIMAL(9, 4) NOT NULL,
    "level11_20" DECIMAL(9, 4) NOT NULL,
    "level12_20" DECIMAL(9, 4) NOT NULL,
    "level13_20" DECIMAL(9, 4) NOT NULL,
    "level14_20" DECIMAL(9, 4) NOT NULL,
    "level15_20" DECIMAL(9, 4) NOT NULL,
    "level16_20" DECIMAL(9, 4) NOT NULL,
    "level17_20" DECIMAL(9, 4) NOT NULL,
    "level18_20" DECIMAL(9, 4) NOT NULL,
    "level19_20" DECIMAL(9, 4) NOT NULL,
    "level20_20" DECIMAL(9, 4) NOT NULL,
    "level20_40" DECIMAL(9, 4) NOT NULL,
    "level21_40" DECIMAL(9, 4) NOT NULL,
    "level22_40" DECIMAL(9, 4) NOT NULL,
    "level23_40" DECIMAL(9, 4) NOT NULL,
    "level24_40" DECIMAL(9, 4) NOT NULL,
    "level25_40" DECIMAL(9, 4) NOT NULL,
    "level26_40" DECIMAL(9, 4) NOT NULL,
    "level27_40" DECIMAL(9, 4) NOT NULL,
    "level28_40" DECIMAL(9, 4) NOT NULL,
    "level29_40" DECIMAL(9, 4) NOT NULL,
    "level30_40" DECIMAL(9, 4) NOT NULL,
    "level31_40" DECIMAL(9, 4) NOT NULL,
    "level32_40" DECIMAL(9, 4) NOT NULL,
    "level33_40" DECIMAL(9, 4) NOT NULL,
    "level34_40" DECIMAL(9, 4) NOT NULL,
    "level35_40" DECIMAL(9, 4) NOT NULL,
    "level36_40" DECIMAL(9, 4) NOT NULL,
    "level37_40" DECIMAL(9, 4) NOT NULL,
    "level38_40" DECIMAL(9, 4) NOT NULL,
    "level39_40" DECIMAL(9, 4) NOT NULL,
    "level40_40" DECIMAL(9, 4) NOT NULL,
    "level40_50" DECIMAL(9, 4) NOT NULL,
    "level41_50" DECIMAL(9, 4) NOT NULL,
    "level42_50" DECIMAL(9, 4) NOT NULL,
    "level43_50" DECIMAL(9, 4) NOT NULL,
    "level44_50" DECIMAL(9, 4) NOT NULL,
    "level45_50" DECIMAL(9, 4) NOT NULL,
    "level46_50" DECIMAL(9, 4) NOT NULL,
    "level47_50" DECIMAL(9, 4) NOT NULL,
    "level48_50" DECIMAL(9, 4) NOT NULL,
    "level49_50" DECIMAL(9, 4) NOT NULL,
    "level50_50" DECIMAL(9, 4) NOT NULL,
    "level50_60" DECIMAL(9, 4) NOT NULL,
    "level51_60" DECIMAL(9, 4) NOT NULL,
    "level52_60" DECIMAL(9, 4) NOT NULL,
    "level53_60" DECIMAL(9, 4) NOT NULL,
    "level54_60" DECIMAL(9, 4) NOT NULL,
    "level55_60" DECIMAL(9, 4) NOT NULL,
    "level56_60" DECIMAL(9, 4) NOT NULL,
    "level57_60" DECIMAL(9, 4) NOT NULL,
    "level58_60" DECIMAL(9, 4) NOT NULL,
    "level59_60" DECIMAL(9, 4) NOT NULL,
    "level60_60" DECIMAL(9, 4) NOT NULL,
    "level60_70" DECIMAL(9, 4) NOT NULL,
    "level61_70" DECIMAL(9, 4) NOT NULL,
    "level62_70" DECIMAL(9, 4) NOT NULL,
    "level63_70" DECIMAL(9, 4) NOT NULL,
    "level64_70" DECIMAL(9, 4) NOT NULL,
    "level65_70" DECIMAL(9, 4) NOT NULL,
    "level66_70" DECIMAL(9, 4) NOT NULL,
    "level67_70" DECIMAL(9, 4) NOT NULL,
    "level68_70" DECIMAL(9, 4) NOT NULL,
    "level69_70" DECIMAL(9, 4) NOT NULL,
    "level70_70" DECIMAL(9, 4) NOT NULL,
    "level70_80" DECIMAL(9, 4) NOT NULL,
    "level71_80" DECIMAL(9, 4) NOT NULL,
    "level72_80" DECIMAL(9, 4) NOT NULL,
    "level73_80" DECIMAL(9, 4) NOT NULL,
    "level74_80" DECIMAL(9, 4) NOT NULL,
    "level75_80" DECIMAL(9, 4) NOT NULL,
    "level76_80" DECIMAL(9, 4) NOT NULL,
    "level77_80" DECIMAL(9, 4) NOT NULL,
    "level78_80" DECIMAL(9, 4) NOT NULL,
    "level79_80" DECIMAL(9, 4) NOT NULL,
    "level80_80" DECIMAL(9, 4) NOT NULL,
    "level80_90" DECIMAL(9, 4) NOT NULL,
    "level81_90" DECIMAL(9, 4) NOT NULL,
    "level82_90" DECIMAL(9, 4) NOT NULL,
    "level83_90" DECIMAL(9, 4) NOT NULL,
    "level84_90" DECIMAL(9, 4) NOT NULL,
    "level85_90" DECIMAL(9, 4) NOT NULL,
    "level86_90" DECIMAL(9, 4) NOT NULL,
    "level87_90" DECIMAL(9, 4) NOT NULL,
    "level88_90" DECIMAL(9, 4) NOT NULL,
    "level89_90" DECIMAL(9, 4) NOT NULL,
    "level90_90" DECIMAL(9, 4) NOT NULL,
    CONSTRAINT "weapon_sub_stat_data_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "refinements" (
    "weapon_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "description_rank1" VARCHAR(1000) NOT NULL,
    "description_rank2" VARCHAR(1000) NOT NULL,
    "description_rank3" VARCHAR(1000) NOT NULL,
    "description_rank4" VARCHAR(1000) NOT NULL,
    "description_rank5" VARCHAR(1000) NOT NULL,
    CONSTRAINT "refinements_pkey" PRIMARY KEY ("weapon_id")
  );

-- CreateTable
CREATE TABLE
  "artifact_types" (
    "id" INTEGER NOT NULL,
    "japanese" VARCHAR(100) NOT NULL,
    "english" VARCHAR(100) NOT NULL,
    CONSTRAINT "artifact_types_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "artifact_sets" (
    "id" INTEGER NOT NULL,
    "name_japanese" VARCHAR(100) NOT NULL,
    "name_english" VARCHAR(100) NOT NULL,
    "description_2set" VARCHAR(1000) NOT NULL,
    "description_4set" VARCHAR(1000) NOT NULL,
    CONSTRAINT "artifact_sets_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "artifacts" (
    "id" INTEGER NOT NULL,
    "artifact_type_id" INTEGER NOT NULL,
    "artifact_set_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(1000) NOT NULL,
    "star" INTEGER NOT NULL,
    CONSTRAINT "artifacts_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "artifact_main_stat_data" (
    "stat_id" INTEGER NOT NULL,
    "star4" DECIMAL(9, 4) NOT NULL,
    "star5" DECIMAL(9, 4) NOT NULL,
    CONSTRAINT "artifact_main_stat_data_pkey" PRIMARY KEY ("stat_id")
  );

-- CreateTable
CREATE TABLE
  "accounts" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "provider" TEXT NOT NULL,
    "provider_account_id" TEXT NOT NULL,
    "refresh_token" TEXT,
    "access_token" TEXT,
    "expires_at" INTEGER,
    "token_type" TEXT,
    "scope" TEXT,
    "id_token" TEXT,
    "session_state" TEXT,
    CONSTRAINT "accounts_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "sessions" (
    "id" TEXT NOT NULL,
    "session_token" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "expires" TIMESTAMP(3) NOT NULL,
    CONSTRAINT "sessions_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "users" (
    "id" TEXT NOT NULL,
    "name" TEXT,
    "email" TEXT,
    "email_verified" TIMESTAMP(3),
    "image" TEXT,
    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "verificationtokens" (
    "identifier" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "expires" TIMESTAMP(3) NOT NULL
  );

-- CreateTable
CREATE TABLE
  "targets" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "character_id" INTEGER NOT NULL,
    "character_level_id" INTEGER NOT NULL,
    "normal_attack_level" INTEGER NOT NULL,
    "elemental_skill_level" INTEGER NOT NULL,
    "elemental_burst_level" INTEGER NOT NULL,
    "constellation_rank" INTEGER NOT NULL,
    "weapon_id" INTEGER NOT NULL,
    "weapon_level_id" INTEGER NOT NULL,
    "refinement_rank" INTEGER NOT NULL,
    "flower_artifact_manager_id" INTEGER NOT NULL,
    "plume_artifact_manager_id" INTEGER NOT NULL,
    "sands_artifact_manager_id" INTEGER NOT NULL,
    "goblet_artifact_manager_id" INTEGER NOT NULL,
    "circlet_artifact_manager_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    CONSTRAINT "targets_pkey" PRIMARY KEY ("id")
  );

-- CreateTable
CREATE TABLE
  "artifact_managers" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "score" DECIMAL(9, 4) NOT NULL,
    "artifact_id" INTEGER NOT NULL,
    "main_stat_id" INTEGER NOT NULL,
    "sub1_stat_name_id" INTEGER NOT NULL,
    "sub2_stat_name_id" INTEGER NOT NULL,
    "sub3_stat_name_id" INTEGER NOT NULL,
    "sub4_stat_name_id" INTEGER NOT NULL,
    "sub1_number" DECIMAL(9, 4) NOT NULL,
    "sub2_number" DECIMAL(9, 4) NOT NULL,
    "sub3_number" DECIMAL(9, 4) NOT NULL,
    "sub4_number" DECIMAL(9, 4) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    CONSTRAINT "artifact_managers_pkey" PRIMARY KEY ("id")
  );

-- CreateIndex
CREATE UNIQUE INDEX "accounts_provider_provider_account_id_key" ON "accounts" ("provider", "provider_account_id");

-- CreateIndex
CREATE UNIQUE INDEX "sessions_session_token_key" ON "sessions" ("session_token");

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users" ("email");

-- CreateIndex
CREATE UNIQUE INDEX "verificationtokens_token_key" ON "verificationtokens" ("token");

-- CreateIndex
CREATE UNIQUE INDEX "verificationtokens_identifier_token_key" ON "verificationtokens" ("identifier", "token");

-- AddForeignKey
ALTER TABLE "accounts" ADD CONSTRAINT "accounts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sessions" ADD CONSTRAINT "sessions_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "targets" ADD CONSTRAINT "targets_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "artifact_managers" ADD CONSTRAINT "artifact_managers_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON DELETE CASCADE ON UPDATE CASCADE;