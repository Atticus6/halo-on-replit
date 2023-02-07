if [ -f "./halo.jar" ];then
  echo "项目部署过，重新部署请删除halo.jar"
  else
    echo '1. halo-1.4'
    echo '2. halo-1.5'
    echo '3. halo-1.6'
    read -p "请输入你需要的版本号version（默认最新）" select
    echo 'downloading...'
    case $select in
    1)
        curl -L https://github.com/halo-dev/halo/releases/download/v1.4.17/halo-1.4.17.jar --output halo.jar
        ;;
    2)
        curl -L https://github.com/halo-dev/halo/releases/download/v1.5.5/halo-1.5.5.jar --output halo.jar
        ;;
    *)
        curl -L https://github.com/halo-dev/halo/releases/download/v1.6.0/halo-1.6.0.jar --output halo.jar
        ;;




    esac
fi

java -jar halo.jar