# Kế hoạch kiểm thử Moodle

## 1. Phạm vi
Thực hiện kiểm thử đầy đủ 6 chức năng không bao gồm các thành phần bên ngoài và kiểm thử tải
1. Đăng nhập/Đăng xuất và quản lý tài khoản người dùng
2. Tạo và quản lý khóa học
3. Ghi danh
4. Tạo và làm bài kiểm tra
5. Nộp bài tập và chấm điểm
6. Thảo luận diễn đàn

## 2. Mục tiêu
1. Thiết kế tối thiểu 100 ca kiểm thử thủ công, mỗi ca có mã yêu cầu, dữ liệu cụ thể và kết quả mong đợi
2. Áp dụng EP và BVA cho tối thiểu 4 trường dữ liệu, bảng quyết định và chuyển trạng thái
3. Kiểm thử hộp trắng cho 3 hàm, bao phủ nhánh từ 80% trở lên
4. Viết tối thiểu 25 kiểm thử đơn vị và 12 kịch bản tự động chạy trên GitHub Action
5. Ghi nhận tối thiểu 10 lỗi có minh chứng, trong đó có 1 lỗi được kiểm thử xác nhận lại
6. Bao phủ yêu cầu trong RTM đạt từ 90% trở lên, nộp

## 3. Cách tiếp cận
| Kỹ thuật | Áp dụng |
|---|---|
| Hộp đen | EP và BVA cho điểm, số lần làm bài, thời gian mở đóng, số ký tự bài đăng; bảng quyết định cho ghi danh và phân quyền; chuyển trạng thái cho bài nộp |
| Hộp trắng | Nhóm tự viết lại 3 hàm mô phỏng quy tắc nghiệp vụ |
| Tự động hóa | Selenium hoặc Playwright cho giao diện, Postman cho API, PHPUnit cho đơn vị, GitHub Actions cho CI |
| Thăm dò | 2 phiên có điều lệ, mỗi phiên 30 đến 45 phút |
| Quản lý lỗi | GitHub Issues với nhãn rủi ro |

## 4. Tiêu chí đầu vào và đầu ra
| Đầu vào | Đầu ra |
|---|---|
| Moodle chạy được bằng Docker | 100% ca ưu tiên cao đã thực thi |
| Dữ liệu mẫu gồm 1 quản trị, 2 giảng viên, 15 sinh viên, 2 khóa học, 1 bài kiểm tra và 1 diễn đàn | Từ 95% ca đạt trở lên |
| Smoke test 10 ca đạt 100% | Không còn lỗi Critical hoặc High ở trạng thái mở |
| Đặc tả 6 chức năng đã rà soát | Bao phủ RTM từ 90% trở lên, bao phủ nhánh ba hàm hộp trắng từ 80% trở lên |

## 5. Sáu rủi ro (K x A)
| Mã | Rủi ro | K | A | Điểm |
|---|---|---|---|---|---|
| R01 | Xem được bài làm hoặc điểm của người khác do phân quyền sai | 2 | 5 | 10 |
| R02 | Quiz chấm sai khi câu hỏi số có làm tròn hoặc đáp án nhiều phần | 3 | 4 | 12 |
| R03 | Nội dung HTML trong khóa học hoặc diễn đàn chứa mã kịch bản (XSS) | 3 | 4 | 12 |
| R04 | Mất dữ liệu bài nộp hoặc điểm khi nâng cấp hoặc sao lưu lỗi | 2 | 5 | 10 |
| R05 | Bài kiểm tra mở đóng sai múi giờ, sinh viên bị từ chối đúng hạn | 3 | 3 | 9 |
| R06 | Năm thành viên phối hợp kém, trùng việc, commit dồn cuối kỳ | 4 | 3 | 12 |

## 6. Phân công
| Thành viên | Nhiệm vụ |
|---|---|
| Huỳnh Hoàng Phúc | Trưởng nhóm, Test Leader lập kế hoạch, tổng hợp báo cáo |
| Trần Phước Đạt | Test Designer thiết kế ca kiểm thử, EP và BVA, bảng quyết định cho đăng nhập, tài khoản, khóa học, ghi danh |
| Phạm Gia Khiêm | Test Designer thiết kế ca kiểm thử, EP và BVA, chuyển trạng thái cho Quiz, Assignment, Gradebook, diễn đàn, hộp trắng cho 3 hàm và unit test |
| Trần Thị Mỹ Dung | Manual Tester thực thi ca kiểm thử nhóm đăng nhập, khóa học, ghi danh, kiểm thử bảo mật và ghi nhận lỗi |
| Nguyễn Thị Bích Hằng | Manual Tester thực thi ca kiểm thử nhóm Quiz, Assignment, Gradebook, diễn đàn, kiểm thử thăm dò, kịch bản tự động giao diện và API, chạy CI |

## 7. Lịch trình dự kiến
| Thời điểm | Công việc |
|---|---|
| Buổi 2 | Lập nhóm, tạo kho GitHub |
| Buổi 3 | Nộp phiếu đăng ký đề tài lên LMS, đẩy bản nháp kế hoạch lên GitHub |
| Buổi 4 đến 6 | Đặc tả, điều kiện kiểm thử, ca kiểm thử vòng 1 |
| Buổi 7 | Nộp kế hoạch PDF và Excel (RTM, TestCase), đạt 50% ca |
| Buổi 8 | Hộp trắng cho 3 hàm |
| Buổi 9 | 25 kiểm thử đơn vị, đưa vào CI |
| Buổi 10 | Kiểm thử tự động, hồi quy, báo cáo hoàn tất sản phẩm |
