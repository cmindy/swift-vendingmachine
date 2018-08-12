# step 1

- 음료수 클래스를 만들고 해당 클래스를 상속받는 하위클래스 구조를 3단으로 생성
- 클래스의 정보 출력을 위한 CustomStringConvertible 오버라이딩

# step 2

- 단위 테스트 추가 : 음료수 객체 생성, 출력 테스트
- 음료수를 상속받는 클래스마다 고유의 상태 추가
- 객체 정보 출력에 스스로의 클래스 명을 출력하는 부분 추가


#step 3

- 음료 객체들을 저장하는 DrinkInventory 객체 선언
- 6가지 음료를 담당할 배열 선언
- 음료의 이름,가격,재고수 를 담당하는 구조체 선언. 재고창고 대신 해당 구조체를 이용해서 음료의 정보를 주고 받음
- 단순 비교의 경우를 위한 체커 구조체 선언