---
name: Báo cáo lỗi
about: Ghi nhận một lỗi theo mẫu (bảng 5.1.3, giáo trình COMP1307)
title: "[Chức năng] Hiện tượng + nơi xảy ra + điều kiện"
labels: bug
assignees: ''
---

<!-- Tiêu đề tốt: "Đăng ký học phần: cho phép vượt 25 tín chỉ khi đăng ký học phần cuối cùng" -->

**Ngày, người báo cáo:** <!-- 15/10/2026 – Trần Thị Bình -->

**Đối tượng và môi trường:** <!-- Staging, build 1.2.3, Windows 11, Chrome 13x -->

**Ngữ cảnh:** <!-- Ca kiểm thử, hoạt động kiểm thử đang làm: TC-REG-005, kiểm thử hệ thống vòng 2 -->

**Điều kiện tiên quyết, dữ liệu:** <!-- Tài khoản 4701104005 đã đăng ký 24 tín chỉ -->

**Các bước tái hiện:**
1. 
2. 
3. 

**Kết quả mong đợi** (theo yêu cầu nào): <!-- Hệ thống từ chối, báo "Vượt quá 25 tín chỉ" (R04.1) -->

**Kết quả thực tế:** <!-- Đăng ký thành công, tổng 27 tín chỉ -->

**Mức độ nghiêm trọng (severity):** <!-- gắn nhãn severity:critical | high | medium | low -->

**Mức độ ưu tiên (priority):** <!-- gắn nhãn priority:P1 … P4 -->

**Tần suất tái hiện:** <!-- Luôn luôn (10/10) / thỉnh thoảng (x/10) -->

**Minh chứng:** <!-- kéo thả ảnh chụp màn hình, video, log, tệp HAR vào đây -->

**Tham chiếu:** <!-- Yêu cầu, ca kiểm thử, lỗi liên quan: R04.1, TC-REG-005, #12 -->
