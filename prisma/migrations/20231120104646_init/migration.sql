-- CreateTable
CREATE TABLE "character_buffs" (
    "id" INTEGER NOT NULL,
    "character_id" INTEGER NOT NULL,
    "reference_type" VARCHAR(100) NOT NULL,

    CONSTRAINT "character_buffs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "artifact_buffs" (
    "artifact_set_id" INTEGER NOT NULL,
    "needcount" INTEGER NOT NULL,

    CONSTRAINT "artifact_buffs_pkey" PRIMARY KEY ("artifact_set_id")
);

-- CreateTable
CREATE TABLE "weapon_buffs" (
    "id" INTEGER NOT NULL,
    "weapon_id" INTEGER NOT NULL,
    "refinement_rank" INTEGER NOT NULL,

    CONSTRAINT "weapon_buffs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "elemental_resonanece_buffs" (
    "id" INTEGER NOT NULL,
    "name" VARCHAR(100) NOT NULL,

    CONSTRAINT "elemental_resonanece_buffs_pkey" PRIMARY KEY ("id")
);
