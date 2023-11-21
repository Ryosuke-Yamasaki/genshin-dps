import { NextResponse } from "next/server"
import { main } from "../../route"
import prisma from "@/app/lib/prisma"
import getCurrentUser from "@/app/actions/getCurrentUser"


//自分の特定の編成の取得API
export const GET = async (req: Request, res: NextResponse) => {
  try {
    const currentUser = await getCurrentUser()
    const id = req.url.split(`/${currentUser?.id}/`)[1]

    await main()
    const target = await prisma.targets.findFirst({ where: { id } })
    return NextResponse.json({ message: "Success", target }, { status: 200 })
  } catch (error) {
    return NextResponse.json({ message: "Error", error }, { status: 500 })
  } finally {
    await prisma.$disconnect()
  }
}

//編成の編集API
export const PUT = async (req: Request, res: NextResponse) => {
  try {
    const currentUser = await getCurrentUser()
    const id = req.url.split(`/${currentUser?.id}/`)[1]
    const { characterId, characterLevelId, normalAttackLevel, elementalSkillLevel, elementalBurstLevel, constellationRank, weaponId, weaponLevelId, refinementRank, name, flowerArtifactManagerId, plumeArtifactManagerId, sandsArtifactManagerId, gobletArtifactManagerId, circletArtifactManagerId, artifact1Buff, artifact2Buff, artifact3Buff, character1Buff, character2Buff, character3Buff, elementalResonance1Buff, elementalResonance2Buff, weapon1Buff, weapon2Buff, weapon3Buff, } = await req.json()

    await main()
    const target = await prisma.targets.update({
      data: {
        characterId, characterLevelId, normalAttackLevel, elementalSkillLevel, elementalBurstLevel, constellationRank, weaponId, weaponLevelId, refinementRank, name, flowerArtifactManagerId, plumeArtifactManagerId, sandsArtifactManagerId, gobletArtifactManagerId, circletArtifactManagerId, artifact1Buff, artifact2Buff, artifact3Buff, character1Buff, character2Buff, character3Buff, elementalResonance1Buff, elementalResonance2Buff, weapon1Buff, weapon2Buff, weapon3Buff,
      },
      where: { id }
    })
    return NextResponse.json({ message: "Success", target }, { status: 200 })
  } catch (error) {
    return NextResponse.json({ message: "Error", error }, { status: 500 })
  } finally {
    await prisma.$disconnect()
  }
}

//編成の削除API
export const DELETE = async (req: Request, res: NextResponse) => {
  try {
    const currentUser = await getCurrentUser()
    const id = req.url.split(`/${currentUser?.id}/`)[1]

    await main()
    const target = await prisma.targets.delete({
      where: { id },
    })
    return NextResponse.json({ message: "Success", target }, { status: 200 })
  } catch (error) {
    return NextResponse.json({ message: "Error", error }, { status: 500 })
  } finally {
    await prisma.$disconnect()
  }
}