# StormTrooper

프로젝트 템플릿 생성 및 실행 관리

## Installation

Add this line to your application's Gemfile:

```shell script
gem 'storm_trooper'
sttr help
```


## Usage

### Scaffold

#### Platform

* empty platform
* k8s on aws platform
* onprem platform

#### Fragment

* docker-compose
* ansible

### Generate

### Execute

## Development

platform scaffold 구조 예시

```
p10_infra
  tmpls # 템플릿
  vars # 기본값
p20_network
  tmpls
  vars
p30_container
  tmpls
  vars
```

platform 사용 예시

```
p10_infra
  tmpls # override tmpls. 변경된것들만 여기 표시
  vars # override vars. generate 이용해서 empty vars 생성. 1 default vars를 가져오기. 2 tmpls와 override tmpls에서 생성하고 default vars 값 있는것 채워넣기 
p20_network
  tmpls
  vars
p30_container
  tmpls
  vars
orders # last_orders 마지막 실행코드
  p10_infra
  p20_network
  p30_container
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/storm_trooper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/storm_trooper/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


## Code of Conduct

Everyone interacting in the StormTrooper project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/storm_trooper/blob/master/CODE_OF_CONDUCT.md).
