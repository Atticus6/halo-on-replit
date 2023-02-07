if [ -f "./halo.jar" ];then
  echo "项目部署过，重新部署请删除halo.jar"
  else
    echo '1. halo-1.4'
    echo '2. halo-1.5'
    echo '3. halo-1.6'
    echo '4. halo-2.0'
    echo '5. halo-2.1'
    echo '6. halo-2.2'
    echo '7. halo-2.3'
    read -p "请输入你需要的版本号version（默认最新）" select
    echo 'downloading...'
    case $select in
    1)
        curl -L https://github.com/halo-dev/halo/releases/download/v1.4.17/halo-1.4.17.jar --output halo.jar
        ;;
    2)
        curl -L https://github.com/halo-dev/halo/releases/download/v1.5.5/halo-1.5.5.jar --output halo.jar
        ;;
    3)
        curl -L https://github.com/halo-dev/halo/releases/download/v1.6.0/halo-1.6.0.jar --output halo.jar
        ;;
    4)
        cp halo-2.0.0.jar halo.jar
        ;;
    7)
       cp halo-2.3.0.jar halo.jar
       ;;
    *)
        echo 'error'
        ;;



    esac
fi

java -jar halo.jar