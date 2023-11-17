-- CreateTable
CREATE TABLE "normal_attack_data" (
    "id" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "reference_stat_id" INTEGER NOT NULL,
    "influence_stat_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "level1" DECIMAL(9,4) NOT NULL,
    "level2" DECIMAL(9,4) NOT NULL,
    "level3" DECIMAL(9,4) NOT NULL,
    "level4" DECIMAL(9,4) NOT NULL,
    "level5" DECIMAL(9,4) NOT NULL,
    "level6" DECIMAL(9,4) NOT NULL,
    "level7" DECIMAL(9,4) NOT NULL,
    "level8" DECIMAL(9,4) NOT NULL,
    "level9" DECIMAL(9,4) NOT NULL,
    "level10" DECIMAL(9,4) NOT NULL,
    "level11" DECIMAL(9,4) NOT NULL,
    "level12" DECIMAL(9,4) NOT NULL,
    "level13" DECIMAL(9,4) NOT NULL,
    "level14" DECIMAL(9,4) NOT NULL,
    "level15" DECIMAL(9,4) NOT NULL,

    CONSTRAINT "normal_attack_data_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "normal_attack_dmg_data" (
    "id" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "reference_stat_id" INTEGER NOT NULL,
    "element_id" INTEGER NOT NULL,
    "attack_type_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "level1" DECIMAL(9,4) NOT NULL,
    "level2" DECIMAL(9,4) NOT NULL,
    "level3" DECIMAL(9,4) NOT NULL,
    "level4" DECIMAL(9,4) NOT NULL,
    "level5" DECIMAL(9,4) NOT NULL,
    "level6" DECIMAL(9,4) NOT NULL,
    "level7" DECIMAL(9,4) NOT NULL,
    "level8" DECIMAL(9,4) NOT NULL,
    "level9" DECIMAL(9,4) NOT NULL,
    "level10" DECIMAL(9,4) NOT NULL,
    "level11" DECIMAL(9,4) NOT NULL,
    "level12" DECIMAL(9,4) NOT NULL,
    "level13" DECIMAL(9,4) NOT NULL,
    "level14" DECIMAL(9,4) NOT NULL,
    "level15" DECIMAL(9,4) NOT NULL,

    CONSTRAINT "normal_attack_dmg_data_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "elemental_skill_data" (
    "id" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "reference_stat_id" INTEGER NOT NULL,
    "influence_stat_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "level1" DECIMAL(9,4) NOT NULL,
    "level2" DECIMAL(9,4) NOT NULL,
    "level3" DECIMAL(9,4) NOT NULL,
    "level4" DECIMAL(9,4) NOT NULL,
    "level5" DECIMAL(9,4) NOT NULL,
    "level6" DECIMAL(9,4) NOT NULL,
    "level7" DECIMAL(9,4) NOT NULL,
    "level8" DECIMAL(9,4) NOT NULL,
    "level9" DECIMAL(9,4) NOT NULL,
    "level10" DECIMAL(9,4) NOT NULL,
    "level11" DECIMAL(9,4) NOT NULL,
    "level12" DECIMAL(9,4) NOT NULL,
    "level13" DECIMAL(9,4) NOT NULL,
    "level14" DECIMAL(9,4) NOT NULL,
    "level15" DECIMAL(9,4) NOT NULL,

    CONSTRAINT "elemental_skill_data_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "elemental_skill_dmg_data" (
    "id" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "reference_stat_id" INTEGER NOT NULL,
    "element_id" INTEGER NOT NULL,
    "attack_type_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "level1" DECIMAL(9,4) NOT NULL,
    "level2" DECIMAL(9,4) NOT NULL,
    "level3" DECIMAL(9,4) NOT NULL,
    "level4" DECIMAL(9,4) NOT NULL,
    "level5" DECIMAL(9,4) NOT NULL,
    "level6" DECIMAL(9,4) NOT NULL,
    "level7" DECIMAL(9,4) NOT NULL,
    "level8" DECIMAL(9,4) NOT NULL,
    "level9" DECIMAL(9,4) NOT NULL,
    "level10" DECIMAL(9,4) NOT NULL,
    "level11" DECIMAL(9,4) NOT NULL,
    "level12" DECIMAL(9,4) NOT NULL,
    "level13" DECIMAL(9,4) NOT NULL,
    "level14" DECIMAL(9,4) NOT NULL,
    "level15" DECIMAL(9,4) NOT NULL,

    CONSTRAINT "elemental_skill_dmg_data_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "elemental_burst_data" (
    "id" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "reference_stat_id" INTEGER NOT NULL,
    "influence_stat_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "level1" DECIMAL(9,4) NOT NULL,
    "level2" DECIMAL(9,4) NOT NULL,
    "level3" DECIMAL(9,4) NOT NULL,
    "level4" DECIMAL(9,4) NOT NULL,
    "level5" DECIMAL(9,4) NOT NULL,
    "level6" DECIMAL(9,4) NOT NULL,
    "level7" DECIMAL(9,4) NOT NULL,
    "level8" DECIMAL(9,4) NOT NULL,
    "level9" DECIMAL(9,4) NOT NULL,
    "level10" DECIMAL(9,4) NOT NULL,
    "level11" DECIMAL(9,4) NOT NULL,
    "level12" DECIMAL(9,4) NOT NULL,
    "level13" DECIMAL(9,4) NOT NULL,
    "level14" DECIMAL(9,4) NOT NULL,
    "level15" DECIMAL(9,4) NOT NULL,

    CONSTRAINT "elemental_burst_data_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "elemental_burst_dmg_data" (
    "id" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "reference_stat_id" INTEGER NOT NULL,
    "element_id" INTEGER NOT NULL,
    "attack_type_id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,
    "level1" DECIMAL(9,4) NOT NULL,
    "level2" DECIMAL(9,4) NOT NULL,
    "level3" DECIMAL(9,4) NOT NULL,
    "level4" DECIMAL(9,4) NOT NULL,
    "level5" DECIMAL(9,4) NOT NULL,
    "level6" DECIMAL(9,4) NOT NULL,
    "level7" DECIMAL(9,4) NOT NULL,
    "level8" DECIMAL(9,4) NOT NULL,
    "level9" DECIMAL(9,4) NOT NULL,
    "level10" DECIMAL(9,4) NOT NULL,
    "level11" DECIMAL(9,4) NOT NULL,
    "level12" DECIMAL(9,4) NOT NULL,
    "level13" DECIMAL(9,4) NOT NULL,
    "level14" DECIMAL(9,4) NOT NULL,
    "level15" DECIMAL(9,4) NOT NULL,

    CONSTRAINT "elemental_burst_dmg_data_pkey" PRIMARY KEY ("id")
);
