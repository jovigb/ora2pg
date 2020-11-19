# ora2pg
oracle to postgresql, database convert, postgre, centos7, linux

https://cr.console.aliyun.com/images/cn-hangzhou/gb000000/ora2pg/detail

# build if necessary
tar -zcf share.tar.gz /usr/local/bin/dbiprof /usr/local/bin/dbiproxy /usr/local/bin/dbilogstrip /usr/local/bin/ora2pg /usr/local/bin/ora2pg_scanner /usr/local/lib64/perl5 /usr/local/share/man/man1 /usr/local/share/man/man3 /usr/local/share/perl5 /usr/lib64/perl5 /etc/pki/rpm-gpg

docker build -t ora2pg .

# run
docker run -i -t --rm -v /root/docker_img:/opt/docker_img --name ora2pg registry.cn-hangzhou.aliyuncs.com/gb000000/ora2pg

time ora2pg -c ora2pg_schema.conf

# reference
https://www.cnblogs.com/lottu/p/9114959.html

https://cloud.tencent.com/developer/article/1545260
