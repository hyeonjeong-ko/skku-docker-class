FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

# 작업 디렉토리 생성
WORKDIR /app

# 필요한 패키지들을 설치하기 위해 requirements.txt 복사
COPY ./app/requirements.txt .

# 필요한 패키지들 설치
RUN pip install --no-cache-dir -r requirements.txt

# 앱 코드를 컨테이너 내부의 /app 디렉토리로 복사
COPY ./app /app
