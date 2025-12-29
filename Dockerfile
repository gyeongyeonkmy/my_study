# 1. 노드가 설치된 알파인 OS 이미지 다운로드
FROM node:24-alpine

# 2. 작업 디렉토리 생성
WORKDIR /server

# 3. 코드 작업
COPY . .
RUN npm ci
RUN npx prisma generate

# 4. 포트 노출
EXPOSE 4000

# 5. 서버 실행
CMD ["npm", "run", "dev"]