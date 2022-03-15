D-type FF
| **clk** | **d** | **q(n)** | **q(n+1)** | **comments** |
| :-: | :-: | :-: | :-: | :-: |
| 0 | x | q | q | 0 |  
| 1 | x | q | 1 | 1 |
| ↑ | 0 | 0 | 0 | 0 | 
| ↑ | 1 | 1 | 1 | 0 | 

![image](https://user-images.githubusercontent.com/99534053/158456120-8e3c9f1c-d18d-4f00-94ce-6c196252af68.png)


JK-type FF

![image](https://user-images.githubusercontent.com/99534053/158455188-86855ccd-a34a-4bb9-812b-d1437d5c6283.png)

| **clk** | **j** | **k** | **q(n)** | **q(n+1)** | **comments** |
| :-: | :-: | :-: | :-: | :-: | :-: |
| ↑ | 0 | 0 | 0 | 0 | No change | 
| ↑ | 0 | 0 | 1 | 1 | No change | 
| ↑ | 0 | 1 | 0 | 0 | Reset | 
| ↑ | 0 | 1 | 1 | 0 | Reset | 
| ↑ | 1 | 0 | 0 | 1 | Set | 
| ↑ | 1 | 0 | 1 | 1 | Set | 
| ↑ | 1 | 1 | 0 | 1 | Toggle | 
| ↑ | 1 | 1 | 1 | 0 | Toggle | 

T-type FF

![image](https://user-images.githubusercontent.com/99534053/158455105-433aeae8-d314-46df-bf29-820c8270dba6.png)

| **clk** | **t** | **q(n)** | **q(n+1)** | **comments** |
| :-: | :-: | :-: | :-: | :-: |
| ↑ | 0 | 0 | 0 | No change |  
| ↑ | 0 | 1 | 1 | No change |
| ↑ | 1 | 0 | 1 | Invert (Toggle) | 
| ↑ | 1 | 1 | 0 | Invert (Toggle) | 
