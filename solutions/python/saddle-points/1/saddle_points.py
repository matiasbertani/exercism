def saddle_points(matrix: list[list[int]]) -> dict:
    if not matrix:
        return []
    validate_matrix(matrix)

    all_saddle_points = list()

    for col_index, column in enumerate(all_columns(matrix)):
        row_indexes = get_index_of_all_shortest_trees_in_column(column)
        for row_index in row_indexes:

            tallest_trees_indexes = get_index_of_all_tallest_trees_in_row(matrix[row_index])

            if col_index in tallest_trees_indexes:
                all_saddle_points.append(
                     {"row": row_index + 1 , "column": col_index + 1},
                )
    return all_saddle_points

def validate_matrix(matrix):
    expected_row_length = len(matrix[0])
    for row in matrix:
        if len(row) != expected_row_length:
            raise ValueError("irregular matrix")
def all_columns(matrix) -> list[int]:
    for col_index in range(len(matrix[0])):
        column = [
            matrix[row_index][col_index]
            for row_index in range(len(matrix))
        ]
        yield column

def get_index_of_all_tallest_trees_in_row(row: list) -> int:
    tallest_tree_value = max(row)
    return [
        index
        for index, tree in enumerate(row)
        if tree == tallest_tree_value
    ]

def get_index_of_all_shortest_trees_in_column(column: list) -> int:
    shortest_tree_value = min(column)
    return [
        index
        for index, tree in enumerate(column)
        if tree == shortest_tree_value
    ]