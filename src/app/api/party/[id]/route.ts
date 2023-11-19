import { NextResponse } from "next/server"
import { main } from "../route"
import prisma from '@/app/lib/prisma'


//自分の編成の全取得API
export const GET = async (req: Request, res: NextResponse) => {
  try {
    const id = req.url.split("/party/")[1]
    await main()
    const targets = await prisma.targets.findMany({
      where: {
        userId: id
      }
    })
    return NextResponse.json({ message: "Success", targets }, { status: 200 })
  } catch (error) {
    return NextResponse.json({ message: "Error", error }, { status: 500 })
  } finally {
    await prisma.$disconnect()
  }
}

//編成の作成API
export const POST = async (req: Request, res: NextResponse) => {
  try {
    const id = req.url.split("/party/")[1]
    const { characterId, characterLevelId, normalAttackLevel, elementalSkillLevel, elementalBurstLevel, constellationRank, weaponId, weaponLevelId, refinementRank, name } = await req.json()
    await main()
    const target = await prisma.targets.create({
      data: {
        characterId, characterLevelId, normalAttackLevel, elementalSkillLevel, elementalBurstLevel, constellationRank, weaponId, weaponLevelId, refinementRank, name,
        user: {
          connect: {
            id: id
          }
        }
      }
    })
    return NextResponse.json({ message: "Success", target }, { status: 201 })
  } catch (error) {
    return NextResponse.json({ message: "Error", error }, { status: 500 })
  } finally {
    await prisma.$disconnect()
  }
}