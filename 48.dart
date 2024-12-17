// rotate image
class Solution {
  void rotate(List<List<int>> matrix) {
    int n_row = matrix.length;
    int n_col = matrix[0].length;
    
    for (int i = 0; i<n_row; i++) {
        for (int j = i+1; j<n_row; j++) {
            int temp = matrix[i][j];
            matrix[i][j] = matrix[j][i];
            matrix[j][i] = temp;
        }
    }
    for (int i = 0; i<n_row; i++ ) {
        matrix[i] = matrix[i].reversed.toList();
    }
  }
}
