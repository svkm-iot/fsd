V = 4

INF = float('inf')

graph = [
    [0, 3, INF, INF],
    [INF, 0, 12, 5],
    [4, INF, 0, -1],
    [2, -4, INF, 0]
]

for k in range(V):
    
    for i in range(V):
        
        for j in range(V):
            
            if graph[i][k] + graph[k][j] < graph[i][j]:
                
                graph[i][j] = graph[i][k] + graph[k][j]

print("Shortest distances between every pair of vertices:\n")

for i in range(V):
    
    for j in range(V):
        
        if graph[i][j] == INF:
            print(f"Distance from {i+1} to {j+1} is INF")
            
        else:
            print(f"Distance from {i+1} to {j+1} is {graph[i][j]}")
            
    print()
