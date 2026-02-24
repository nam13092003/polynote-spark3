# repo này chứa thư mực để cài đặt polynote với spark3 #
Chú ý: cần cài Docker Desktop và wsl (windows subsystem for linux), có thể sử dụng Microsoft Store để cài, sau đó đăng nhập hoặc tạo tài khoản cho Docker Hub và wsl.

▶️ Hướng dẫn sử dụng

Bước 1: Clone repository
```
git clone https://github.com/nam13092003/polynote-spark3.git
```
Bước 2: Di chuyển vào thư mục repository
```
cd ./polynote-spark3
```
Bước 3: Mở WSL tại thư mục hiện tại (Windows)
(Nếu chưa có wsl thì cài)
```
wsl
```
Bước 4: Build image với lệnh:
```
docker build -t polynote-spark3 .
```
Bước 5: Chạy Polynote với Docker

Đối với máy vào được wsl
```
docker run --rm -it \
  -p 8192:8192 \
  -p 4040-4050:4040-4050 \
  -v $(pwd)/config.yml:/opt/config/config.yml \
  -v $(pwd)/notebooks:/opt/notebooks \
  polynote-spark3 \
  --config /opt/config/config.yml
```
Đối với máy không vào được wsl
```
docker run --rm -it -p 8192:8192 -p 4040-4050:4040-4050 -v "%cd%/config.yml:/opt/config/config.yml" -v "%cd%/notebooks:/opt/notebooks" polynote-spark3 --config /opt/config/config.yml
```
🌐 Truy cập Polynote

Sau khi container khởi động thành công, mở trình duyệt và truy cập:

http://localhost:8192
