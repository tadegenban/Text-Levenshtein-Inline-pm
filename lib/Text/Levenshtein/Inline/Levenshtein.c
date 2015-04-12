#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int Minimum(int a, int b, int c);

int distance( char *s, char *t ) {
  int s_len = strlen(s);
  int t_len = strlen(t);

  if (strcmp(s, t) == 0) return 0;
  if (s_len == 0) return t_len;
  if (t_len == 0) return s_len;

  // create two work vectors of integer distances
  int *v0 = (int*) malloc(sizeof(int) * (t_len + 1));
  int *v1 = (int*) malloc(sizeof(int) * (t_len + 1));

    // initialize v0 (the previous row of distances)
    // this row is A[0][i]: edit distance for an empty s
    // the distance is just the number of characters to delete from t
    for (int i = 0; i < t_len+1; i++)
        v0[i] = i;

    for (int i = 0; i < s_len; i++)
    {
        // calculate v1 (current row distances) from the previous row v0

        // first element of v1 is A[i+1][0]
        //   edit distance is delete (i+1) chars from s to match empty t
        v1[0] = i + 1;

        // use formula to fill in the rest of the row
        for (int j = 0; j < t_len; j++)
        {
            int cost = (s[i] == t[j]) ? 0 : 1;
            v1[j + 1] = Minimum(v1[j] + 1, v0[j + 1] + 1, v0[j] + cost);
        }

        // copy v1 (current row) to v0 (previous row) for next iteration
        for (int j = 0; j < t_len+1; j++)
            v0[j] = v1[j];
    }

    return v1[t_len];
}

int Minimum(int a, int b, int c) {
  if ( a > b ) {
    return b > c ? c : b;

  } else {
    return a > c ? c : a;
  }

}
