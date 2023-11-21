/*
  Warnings:

  - Added the required column `url` to the `artifacts` table without a default value. This is not possible if the table is not empty.
  - Added the required column `url` to the `characters` table without a default value. This is not possible if the table is not empty.
  - Added the required column `url` to the `weapons` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "artifacts" ADD COLUMN     "url" VARCHAR(100) NOT NULL;

-- AlterTable
ALTER TABLE "characters" ADD COLUMN     "url" VARCHAR(100) NOT NULL;

-- AlterTable
ALTER TABLE "weapons" ADD COLUMN     "url" VARCHAR(100) NOT NULL;
