/*
  Warnings:

  - You are about to drop the `accounts` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `refinements` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `refinement_name` to the `weapons` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "accounts" DROP CONSTRAINT "accounts_user_id_fkey";

-- AlterTable
ALTER TABLE "weapons" ADD COLUMN     "refinement_name" VARCHAR(100) NOT NULL;

-- DropTable
DROP TABLE "accounts";

-- DropTable
DROP TABLE "refinements";

-- CreateTable
CREATE TABLE "refinement_descriptions" (
    "id" INTEGER NOT NULL,
    "weapon_id" INTEGER NOT NULL,
    "refinement" INTEGER NOT NULL,
    "description" VARCHAR(1000) NOT NULL,

    CONSTRAINT "refinement_descriptions_pkey" PRIMARY KEY ("id")
);
