# 베이스 이미지
FROM openjdk:17

# 인자
ARG VERSION

# 작업 디렉터리 세팅 (컨테이너 내부 경로)
WORKDIR /app

# 작업 디렉터리로 jar 복사
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# 실행 명령어 (컨테이너 동작 시 실행)
ENTRYPOINT [ "java" ]

# 실행 명령어 (컨테이너 동작 시 실행)
CMD [ "-jar", "demo.jar" ]


