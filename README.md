# 츠누봇 모바일 애플리케이션 클라이언트

<div id="top"></div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/cnu-bot">
    <img src="https://user-images.githubusercontent.com/69495129/191981078-ce719995-d227-43b3-98f7-12e656336faf.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">🌎Cnubot client🌎</h3>
  <p align="center">
    <br />
    <a href="https://github.com/cnu-bot"><strong>Explore the Organization</strong></a>
    <br />
    <br />
    <!-- <a href="https://github.com/othneildrew/Best-README-Template">View Demo</a> -->
    <!-- · -->
    <a href="https://github.com/cnu-bot/cnubot-client-app/issues/new?assignees=&labels=&template=bug_report.md&title=">Report Bug</a>
    ·
    <a href="https://github.com/cnu-bot/cnubot-client-app/issues/new?assignees=&labels=&template=feature_request.md&title=">Request Feature</a>
  </p>
</div>

## Description

- 충남대 정보제공 앱인 츠누봇의 모바일 프론트 오픈소스

<br>

## Commit Convention

feat: 새로운 기능에 대한 커밋  
fix: 버그 수정에 대한 커밋  
hotfix: main or develop 브랜치에서 긴급 수정해야할 경우
chore: 그 외 자잘한 수정에 대한 커밋  
docs: README.md 수정에 대한 커밋  
refactor: 코드 리팩토링 (최적화 개선)

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

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. check our issue list
3. Create your Feature Branch (`git checkout -b feat-AmazingFeature`) we have our convention
4. Commit your Changes (`git commit -m 'feat: I made it'`)
5. Push to the Branch (`git push origin feat-AmazingFeature`)
6. Open a Pull Request (we have our PR templates)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Chanhyuk Park - [GitHub](https://github.com/ChanhyukPark-Tech) - chanhyuk-tech@kakao.com

Project Link: [cnubot-client-app](admin)

<p align="right">(<a href="#top">back to top</a>)</p>

## 🌟 Contributors

[![contributors](https://contrib.rocks/image?repo=cnu-bot/cnubot-client-app)](https://github.com/cnu-bot/cnubot-client-app/graphs/contributors)
