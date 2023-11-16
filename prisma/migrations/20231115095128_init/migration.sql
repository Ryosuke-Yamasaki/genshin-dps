/*
  Warnings:

  - The primary key for the `elemental_bursts` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `elemental_bursts` table. All the data in the column will be lost.
  - The primary key for the `elemental_skills` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `elemental_skills` table. All the data in the column will be lost.
  - The primary key for the `normal_attacks` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `normal_attacks` table. All the data in the column will be lost.
  - Added the required column `character_id` to the `elemental_bursts` table without a default value. This is not possible if the table is not empty.
  - Added the required column `character_id` to the `elemental_skills` table without a default value. This is not possible if the table is not empty.
  - Added the required column `character_id` to the `normal_attacks` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "elemental_bursts" DROP CONSTRAINT "elemental_bursts_pkey",
DROP COLUMN "id",
ADD COLUMN     "character_id" INTEGER NOT NULL,
ADD CONSTRAINT "elemental_bursts_pkey" PRIMARY KEY ("character_id");

-- AlterTable
ALTER TABLE "elemental_skills" DROP CONSTRAINT "elemental_skills_pkey",
DROP COLUMN "id",
ADD COLUMN     "character_id" INTEGER NOT NULL,
ADD CONSTRAINT "elemental_skills_pkey" PRIMARY KEY ("character_id");

-- AlterTable
ALTER TABLE "normal_attacks" DROP CONSTRAINT "normal_attacks_pkey",
DROP COLUMN "id",
ADD COLUMN     "character_id" INTEGER NOT NULL,
ADD CONSTRAINT "normal_attacks_pkey" PRIMARY KEY ("character_id");
