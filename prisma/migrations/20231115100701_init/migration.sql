/*
  Warnings:

  - The primary key for the `weapon_base_attack_data` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `weapon_id` on the `weapon_base_attack_data` table. All the data in the column will be lost.
  - Added the required column `weapon_base_attack` to the `weapon_base_attack_data` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "weapon_base_attack_data" DROP CONSTRAINT "weapon_base_attack_data_pkey",
DROP COLUMN "weapon_id",
ADD COLUMN     "weapon_base_attack" INTEGER NOT NULL,
ADD CONSTRAINT "weapon_base_attack_data_pkey" PRIMARY KEY ("weapon_base_attack");
