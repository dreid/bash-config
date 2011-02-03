if [[ -d "/mochi" ]]; then
    M_VIRTUALENV=/mochi/opt/app-env/py27-ticket16883
    M_ERLANG_VER=R14B01

    source /mochi/opt/hadoop/hadoop-env.sh

    PATH=/mochi/opt/rabbitmq_server-2.1.1/sbin:$PATH
    PATH=/mochi/opt/erlang-${M_ERLANG_VER}/bin:$PATH
    PATH=/mochi/internal/bin:$PATH
    PATH=$PATH:/mochi/bin

    alias mve='source ${M_VIRTUALENV}/bin/activate'

    export HADOOP_HOME OOZIE_URL
fi
