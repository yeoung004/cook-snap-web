# Next.js 공식 Node.js 18 버전 사용
FROM node:18-alpine

# 작업 디렉토리 설정
WORKDIR /app

# package.json 복사 및 의존성 설치
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# Next.js 프로젝트 복사 및 빌드
COPY . .
RUN yarn build

# Next.js 서버 실행
CMD ["yarn", "start"]

# Next.js 기본 포트 노출
EXPOSE 3000
