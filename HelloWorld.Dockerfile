FROM busybox

RUN seq 1 10000 | while read -r HelloWorld; do echo -ne 'HelloWorld'; done; echo HelloWorld;

CMD strings /dev/urandom | grep -oE 'HelloWorld' | tr -d '\n'