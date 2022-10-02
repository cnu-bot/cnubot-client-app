# cnubot-client-app

<br>

## Description

- 충남대 정보제공 앱인 츠누봇의 모바일 프론트 오픈소스

<br>

## Architecture

<br>

```yaml
- assets
    - images # images
    - icons # app icon
    - config
        # API server IP, 환경(dev, staging, prod), Service key 등 민감한 정보관리
        - .env 
- lib
    - app
        - /0_routes # 페이지 등록, 애니메이션
        - /1_data
            - /0_model # freezed를 활용한 model 생성 (request, response model, etc)
            - /1_provider # dioHelper로 API 통신
            - /2_repository # controller와 provider를 연결하는 데이터 추상화 계층
            - /3_environment # .env 파일의 민감한 정보를 다룸
        - /2_dio
            - /0_interceptor # logging & API error handling
            - dio_helper.dart 
        - /3_util # dialogs, ...
        - /4_view # UI, 
            - 0_constant # colors, text styles
            - 1_component # 공통 component widget
            - 2_home
                - home_bindings.dart # GetX Bindings
                - home_controller.dart # GetX Controller
                - home.dart # GetView UI
    - main.dart  
```

## freezed - Run the model.freezed, model.g generator

<br>

```
flutter pub run build_runner build
```
