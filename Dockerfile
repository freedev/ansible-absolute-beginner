FROM centos:7

ADD docker-entrypoint.sh /docker-entrypoint.sh

ADD main.py /main.py

ENTRYPOINT  ["/docker-entrypoint.sh"]

CMD ["python", "/main.py"]
