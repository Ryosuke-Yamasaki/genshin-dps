/*
  Warnings:

  - You are about to drop the column `location` on the `characters` table. All the data in the column will be lost.
  - You are about to drop the column `title` on the `characters` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "characters" DROP COLUMN "location",
DROP COLUMN "title";
