# IoT_Final

## LoRa Server
![Image](https://github.com/user-attachments/assets/d3926f88-06a9-472a-898d-e6f3db3b1102)

LoRa 통신과 mqtt broker와 통신하기 위한 LoRa, WiFi 값을 본인 값으로 세팅 후 실행

## LoRa Client
![Image](https://github.com/user-attachments/assets/228022cd-0c32-4aea-866d-d068fe9cd015)

LoRa server와 동일한 SF, BANDWIDTH 값을 설정 후 실행

## MQTT broker & Flask web server
![Image](https://github.com/user-attachments/assets/ee69e038-c583-4673-8667-31f0698ceb51)

Mosquitto MQTT broker 실행

<img width="358" alt="Image" src="https://github.com/user-attachments/assets/6988bf4e-ff23-4931-8df9-11ea5f764227" />

![Image](https://github.com/user-attachments/assets/9366f604-b30c-4843-ae27-1174082b72be)

MQTT broker와 local로 연결 후 python3 server.py로 Flask web server 실행

## 게임 진행 방법

1. 관리자 로그인
   
   ![Image](https://github.com/user-attachments/assets/0dcd5a84-9468-4882-aa29-247223c47774)
   
   실행 시킨 웹 서버로 접속해 관리자 계정으로 로그인
2. 참여자 로그인

   ![Image](https://github.com/user-attachments/assets/84d82b2d-59cb-42cb-8242-9bcdfb7ce1ae)

   각 참여자들도 웹 서버에 접속해 관리자가 가지고 있는 참여 코드를 통해 게임 로그인

3. 게임 시작

   ![Image](https://github.com/user-attachments/assets/78abfcc1-9989-48ae-bfff-3621d4c486c0)

   참여자들이 모두 대기중이면 상단 버튼을 통해 게임 시작 가능

4. 게임 진행

   ![Image](https://github.com/user-attachments/assets/d9be3fdd-59b0-4a9b-85b6-4695aaeb3a7a)
   
   게임 시작 시 관리자는 플레이어들의 위치와 현황 확인 가능

   ![Image](https://github.com/user-attachments/assets/9113ee30-30fb-4ce8-9516-a1a77db9dbba)
   
   플레이어는 자신의 위치 및 상태 정보를 확인 가능하며 일정 횟수 동안 상대 위치 확인 가능
   
   상대 HP를 먼저 소모 시킨 플레이어가 승리 후 게임 종료
