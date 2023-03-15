flight_data = {
    "A": ["B", "D", "G"],
    "B": ["C", "E"],
    "C": ["D"],
    "D": ["E"],
    "G": ["C"]
}

def dfs(start, end, path=[]):
    path = path + [start]
    if start == end:
        return [path]
    if start not in flight_data:
        return []
    solutions = []
    for node in flight_data[start]:
        if node not in path:
            new_paths = dfs(node, end, path)
            for p in new_paths:
                solutions.append(p)
    return solutions

start = "A"
end = "E"
solutions = dfs(start, end)
for solution in solutions:
    print(solution)
