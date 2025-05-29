# # 베이스 이미지 pull. vm을 가져 오기
# FROM node:20

# # jar 위치 지정
# WORKDIR /front

# # 이름을 모르니까 카피 
# COPY package*.json ./
# RUN npm install

# COPY . .
# RUN npm run build

# EXPOSE 3000

# # 카피한 파일을 컨테이너 실행환경에서 앱 실행
# CMD ["npm", "start"]   
# # 클라우드 환경에 보낼 거라면 이 명령어가 필요 없다


FROM node:20

# 작업 디렉토리 설정
WORKDIR /front

# package.json과 lock 파일 복사 및 의존성 설치
COPY package*.json ./
RUN npm install
# 앱 소스 전체 복사
COPY . .

# 앱 빌드
RUN npm run build

# # 정적 파일 서빙 도구 설치
# RUN npm install -g serve

# # 포트 오픈
# EXPOSE 3000

# # 앱 실행 (정적 파일 서빙)
# CMD ["serve", "-s", "build", "-l", "3000"]