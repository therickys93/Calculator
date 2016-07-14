FROM therickys93/ubuntu14swift
ADD . /app
WORKDIR /app
CMD ["bash", "test.sh"]
