# polynote-spark3
repo này chứa thư mực để cài đặt polynote với spark3
# Các bước thực hiện:
* kéo repo về
* mở terminal và cd đến thư mục chứ repo vừa tải về
* trong terminal mở wsl nơi tại thư mục đã tạo, chạy lệnh:
  docker run --rm -it \
  -p 8192:8192 \
  -p 4040-4050:4040-4050 \
  -v $(pwd)/config.yml:/opt/config/config.yml \
  -v $(pwd)/notebooks:/opt/notebooks \
  polynote-spark3 \
  --config /opt/config/config.yml
