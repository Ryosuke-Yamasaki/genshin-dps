import prisma from '@/app/lib/prisma'
import { NextResponse } from 'next/server'

export async function main() {
  try {
    await prisma.$connect()
  } catch (error) {
    return Error("DB接続に失敗しました")
  }
}

//編成の全取得API
export const GET = async (req: Request, res: NextResponse) => {
  try {
    await main()
    const targets = await prisma.targets.findMany()
    return NextResponse.json({ message: "Success", targets }, { status: 200 })
  } catch (error) {
    return NextResponse.json({ message: "Error", error }, { status: 500 })
  } finally {
    await prisma.$disconnect()
  }
}