FROM test
ADD . /app
WORKDIR /app
CMD ["bash", "test.sh"]
