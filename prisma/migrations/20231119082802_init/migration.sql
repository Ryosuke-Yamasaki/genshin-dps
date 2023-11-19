/*
  Warnings:

  - You are about to drop the column `score` on the `artifact_managers` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "artifact_managers" DROP COLUMN "score",
ADD COLUMN     "name" VARCHAR(100);

-- AlterTable
ALTER TABLE "targets" ADD COLUMN     "name" VARCHAR(100),
ALTER COLUMN "character_id" SET DEFAULT 29,
ALTER COLUMN "character_level_id" SET DEFAULT 96,
ALTER COLUMN "normal_attack_level" SET DEFAULT 8,
ALTER COLUMN "elemental_skill_level" SET DEFAULT 8,
ALTER COLUMN "elemental_burst_level" SET DEFAULT 8,
ALTER COLUMN "constellation_rank" SET DEFAULT 0,
ALTER COLUMN "weapon_id" SET DEFAULT 5502,
ALTER COLUMN "weapon_level_id" SET DEFAULT 96,
ALTER COLUMN "refinement_rank" SET DEFAULT 1,
ALTER COLUMN "flower_artifact_manager_id" DROP NOT NULL,
ALTER COLUMN "flower_artifact_manager_id" SET DATA TYPE TEXT,
ALTER COLUMN "plume_artifact_manager_id" DROP NOT NULL,
ALTER COLUMN "plume_artifact_manager_id" SET DATA TYPE TEXT,
ALTER COLUMN "sands_artifact_manager_id" DROP NOT NULL,
ALTER COLUMN "sands_artifact_manager_id" SET DATA TYPE TEXT,
ALTER COLUMN "goblet_artifact_manager_id" DROP NOT NULL,
ALTER COLUMN "goblet_artifact_manager_id" SET DATA TYPE TEXT,
ALTER COLUMN "circlet_artifact_manager_id" DROP NOT NULL,
ALTER COLUMN "circlet_artifact_manager_id" SET DATA TYPE TEXT;

-- CreateTable
CREATE TABLE "levels" (
    "id" INTEGER NOT NULL,
    "level" INTEGER NOT NULL,
    "ascension_rank" INTEGER NOT NULL,
    "value_text" VARCHAR(100) NOT NULL,

    CONSTRAINT "levels_pkey" PRIMARY KEY ("id")
);
