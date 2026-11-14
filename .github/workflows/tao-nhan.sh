#!/usr/bin/env bash
# Thực hành 5.1 – tạo bộ nhãn quản lý lỗi cho kho GitHub của nhóm (cần GitHub CLI: gh auth login).
# Chạy trong thư mục kho:  bash .github/tao-nhan.sh
set -e
tao() { gh label create "$1" --color "$2" --description "$3" --force; }

tao "severity:critical" "b60205" "Hệ thống sập, mất dữ liệu, không có cách vượt qua"
tao "severity:high"     "d93f0b" "Chức năng chính sai, có cách vượt qua khó khăn"
tao "severity:medium"   "fbca04" "Chức năng phụ sai hoặc có cách vượt qua dễ"
tao "severity:low"      "c5def5" "Giao diện, chính tả, ảnh hưởng nhỏ"
tao "priority:P1"       "5319e7" "Sửa ngay"
tao "priority:P2"       "7057ff" "Sửa trong bản phát hành này"
tao "priority:P3"       "a295ff" "Sửa khi có thời gian"
tao "priority:P4"       "d4c5f9" "Có thể hoãn"
tao "status:fixed"      "0e8a16" "Lập trình viên đã sửa, chờ kiểm thử lại"
tao "status:retest"     "1d76db" "Đang kiểm thử lại"
tao "duplicate"         "cfd3d7" "Trùng với lỗi đã báo"
tao "wontfix"           "ffffff" "Không sửa (từ chối hoặc hoãn)"
echo "Đã tạo nhãn."
