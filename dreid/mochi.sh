if [[ -d "/mochi" ]]; then
    M_VIRTUALENV=/mochi/opt/app-env/py27-ticket16883
    M_ERLANG_VER=R14B01

    PATH=/mochi/opt/hadoop/bin:/mochi/opt/rabbitmq_server-2.1.1/sbin:$PATH
    PATH=/mochi/opt/erlang-${M_ERLANG_VER}/bin:$PATH
    PATH=/mochi/internal/bin:$PATH

    HADOOP_HOME=/mochi/opt/hadoop/hadoop-0.20.2+737

    alias mve='source ${M_VIRTUALENV}/bin/activate'

    export HADOOP_HOME
fi
