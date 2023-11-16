import getCurrentUser from '@/app/actions/getCurrentUser'

// メインページ
const Home = async () => {
  const currentUser = await getCurrentUser()

  return <div className="text-center">{
    currentUser ?
      <div>
        ログイン中
      </div>
      : <div>ログインをしてください</div>
  }</div>
}

export default Home