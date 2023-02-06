if [ -f "./halo.jar" ];then
  echo "项目部署过，重新部署请删除halo.jar"
  else
    echo '6. halo-1.4'
    echo '5. halo-1.5'
    echo '4. halo-1.6'
    echo '3. halo-2.0'
    echo '2. halo-2.1'
    echo '1. halo-2.2'
    read -p "请输入你需要的版本号version（默认最新）" select
    echo 'downloading...'
    case $select in
    6)
        curl -L https://github.com/halo-dev/halo/releases/download/v1.4.17/halo-1.4.17.jar --output halo.jar
        ;;
    5)
        curl -L https://github.com/halo-dev/halo/releases/download/v1.5.5/halo-1.5.5.jar --output halo.jar
        ;;
    4)
        curl -L https://github.com/halo-dev/halo/releases/download/v1.6.0/halo-1.6.0.jar --output halo.jar
        ;;
    *)
        echo 'error'
        ;;



    esac
fi

java -jar halo.jar