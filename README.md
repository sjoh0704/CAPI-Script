### CAPI 자동화 스크립트
```
├── clusters
│   └── capi-test.yaml
├── execute
│   ├── create_aws_k8s.sh
│   ├── create_aws_k8s.sh.example
│   ├── delete_all.sh
│   ├── extract_kubeconfig.sh
│   └── install_calico.sh
├── kubeconfig.yaml
├── README.md
├── test
│   └── mario.yaml
├── value.sh
└── value.sh.example
```

<br/>

### Requirements
1. management K8S cluster 준비  
2. clusterctl 설치
3. clusterawsadm 설치


<br/>

### 변수 세팅
1. value.sh.exmpale을 copy해서 필요한 변수값을 설정
2. chmod +x value.sh
3. ./value.sh 실행시 ./execute 내 모든 실행 파일들 변수 설정이 완료됨

<br/>

### CAPI controller 설치 및 cluster configruation file 생성
1. cd ./execute
2. ./create_aws_k8s.sh 실행시 ./clusters에 cluster yaml 파일 생성

<br/>

### kubeconfig 추출
1. cd ./extract
2. ./kubeconfig.sh 실행시 kubeconfig.yaml 생성
3. 생성된 cluster 확인 
    ```
    root@seung-laptop:~/capi#  kubectl --kubeconfig=kubeconfig.yaml get nodes
    NAME                                             STATUS     ROLES    AGE     VERSION
    ip-10-0-176-22.ap-northeast-2.compute.internal   NotReady   master   9m41s   v1.19.8
    ip-10-0-76-101.ap-northeast-2.compute.internal   NotReady   <none>   8m38s   v1.19.8
    ip-10-0-85-109.ap-northeast-2.compute.internal   NotReady   <none>   8m37s   v1.19.8
    ```

<br/>

### Install calico
1. cd ./extract
2. ./install_calico.sh 실행시 calico 설치

<br/>

### 모두 삭제
1. cd ./execute
2. /delete_all.sh 실행시 cloudformation stack, CR, CRD, Controller 모두 삭제 

<br/>
