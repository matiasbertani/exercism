def saddle_points(matrix: list[list[int]]) -> dict:
    validate_matrix(matrix)

    tallets_trees_per_row = get_tallest_trees_per_row(matrix)
    shortest_trees_per_column = get_shortest_trees_per_column(matrix)

    return [
        {
            "row": row_index + 1,
            "column": col_index + 1,
        }
        for row_index, tallets_tree_height in enumerate(tallets_trees_per_row)
        for col_index, shortest_tree_height in enumerate(shortest_trees_per_column)
        if tallets_tree_height == shortest_tree_height
    ]

def validate_matrix(matrix: list[list[int]]) -> None:
    if not all(len(row) == len(matrix[0]) for row in matrix):
        raise ValueError("irregular matrix")

def get_tallest_trees_per_row(matrix: list[list[int]]) -> list[int]:
    return list(map(max, matrix))

def get_shortest_trees_per_column(matrix: list[list[int]]) -> list[int]:
    transposed_matrix = list(zip(*matrix))
    return list(map(min, transposed_matrix))
