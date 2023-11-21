/*
  Warnings:

  - Added the required column `description` to the `elemental_resonanece_buffs` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "elemental_resonanece_buffs" ADD COLUMN     "description" VARCHAR(1000) NOT NULL;
