# FastAPI 앱을 빌드할 이미지를 선택
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8
RUN pip install "fastapi[all]"
RUN pip install cryptography



# 앱 디렉토리를 생성하고 필요한 파일들을 복사
WORKDIR /app
# 앱 코드를 컨테이너 내부의 /app 디렉토리로 복사
COPY ./app /app
