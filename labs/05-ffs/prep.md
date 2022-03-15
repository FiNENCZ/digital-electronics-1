D-type FF
| **clk** | **d** | **q(n)** | **q(n+1)** | **comments** |
| :-: | :-: | :-: | :-: | :-: |
| 0 | x | 0 | q | 0 |  
| 1 | x | 0 | 1 | 1 |
| ↑ | 0 | 1 | 0 | 0 | 
| ↑ | 1 | 1 | 1 | 0 | 

JK-type FF
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
