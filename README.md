# Flutter_Framework 
Flutter 프레임워크 
 
## 개발 언어  
+ Dart 3.2.6
 
## 필요한 모듈 및 패키지 
``` flutter
flutter pub add go_router
flutter pub add go_router_builder 
flutter pub add flutter_riverpod
flutter pub add build_runner 
```
 
## 설치도구 
+ Android Studio ( https://developer.android.com/studio?hl=ko )

## 사용한 모듈 및 패키지 
+ GoRouter
  ```
  선언형으로 라우팅을 다룰 수 있다는 편리함과 dynamic link 같은 기능을 사용할때,
  모든 라우팅 로직을 작성할 필요 없이 선언돼있는 router로 go()를 한번 실행하면 하위 router가 모두 같이 푸쉬되기 때문에 유용합니다.
  단점으로는 build()가 지속적으로 이뤄지는 부분이 있으나,
  flutter 프레임워크가 build() 횟수에 상관없이 퍼포먼스가 잘 나오도록 설계되어 있기 때문에 장점을 버리면서 쓰지 않을 이유가 없었습니다.
  ```
