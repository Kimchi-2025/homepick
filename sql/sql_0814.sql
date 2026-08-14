-- Active: 1786606093637@@gateway01.ap-northeast-1.prod.aws.tidbcloud.com@4000@test10
USE test10;

# QnA게시판 테이블 생성
# 회원가입
CREATE TABLE member (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    role VARCHAR(20) DEFAULT 'ROLE_USER',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) AUTO_ID_CACHE 1;

