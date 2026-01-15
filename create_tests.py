import os

def split_loop_tests():
    # Loop Tests Logic
    tests = [
        # 01
        """
        int main() {
          int sum = 0;
          int i;
          for (i = 0; i < 10; i = i + 1) {
            sum = sum + i;
          }
          if (sum == 45) return 0;
          return 1;
        }
        """,
        # 02
        """
        int main() {
          int i = 0;
          int sum = 0;
          for (; i < 10; i = i + 1) {
            sum = sum + i;
          }
          if (sum == 45) return 0;
          return 1;
        }
        """,
        # 03
        """
        int main() {
          int i = 0;
          int sum = 0;
          for (i = 0; ; i = i + 1) {
            if (i >= 10) break;
            sum = sum + i;
          }
          if (sum == 45) return 0;
          return 1;
        }
        """,
        # 04
        """
        int main() {
          int sum = 0;
          int i;
          for (i = 0; i < 10; ) {
            sum = sum + i;
            i = i + 1;
          }
          if (sum == 45) return 0;
          return 1;
        }
        """,
        # 05
        """
        int main() {
          int sum = 0;
          int i;
          for (i = 0; i < 20 && sum < 100; i = i + 1) {
            sum = sum + i;
          }
          if (sum == 105) return 0;
          return 1;
        }
        """,
        # 06
        """
        int main() {
          int count = 0;
          int i;
          int j;
          for (i = 0; i < 5; i = i + 1) {
            for (j = 0; j < 5; j = j + 1) {
              count = count + 1;
            }
          }
          if (count == 25) return 0;
          return 1;
        }
        """,
        # 07
        """
        int main() {
          int sum = 0;
          int i;
          for (i = 0; i < 10; i = i + 1) {
            if (i % 2 == 0) continue;
            sum = sum + i;
          }
          if (sum == 25) return 0;
          return 1;
        }
        """,
        # 08
        """
        int main() {
          int i;
          for (i = 0; i < 10; i = i + 1) {}
          if (i == 10) return 0;
          return 1;
        }
        """,
        # 09
        """
        int main() {
          int i = 100;
          int sum = 0;
          {
              int i;
              for (i = 0; i < 10; i = i + 1) {
                sum = sum + i;
              }
          }
          if (i == 100 && sum == 45) return 0;
          return 1;
        }
        """,
        # 10
        """
        int main() {
          float fsum = 0.0;
          float f;
          for (f = 0.0; f < 5.0; f = f + 1.0) {
            fsum = fsum + f;
          }
          if (fsum == 10.0) return 0;
          return 1;
        }
        """
    ]
    
    for i, content in enumerate(tests):
        idx = f"{i+1:02d}"
        path = f"test/resources/functional/300_loop_{idx}.sy"
        with open(path, "w") as f:
            f.write(content.strip())
        with open(path.replace(".sy", ".out"), "w") as f:
            f.write("0\n")

def split_struct_tests():
    data_structs = """
struct Point {
  int x;
  int y;
};

struct Rect {
  struct Point p1;
  struct Point p2;
};

struct Node {
  int val;
  int next;
};

struct Data {
  int arr[10];
  float f;
};

struct Mixed {
  int a;
  float b;
  int c;
};
    """
    
    tests = [
        # 01
        """
        int main() {
          struct Point p;
          p.x = 10;
          p.y = 20;
          if (p.x == 10 && p.y == 20) return 0;
          return 1;
        }
        """,
        # 02
        """
        int main() {
          struct Point p = {30, 40};
          if (p.x == 30 && p.y == 40) return 0;
          return 1;
        }
        """,
        # 03
        """
        int main() {
          struct Rect r;
          r.p1.x = 1;
          r.p1.y = 2;
          r.p2.x = 3;
          r.p2.y = 4;
          if (r.p2.x - r.p1.x == 2) return 0;
          return 1;
        }
        """,
        # 04
        """
        int main() {
          struct Point points[5];
          int i;
          for(i = 0; i < 5; i = i + 1) {
            points[i].x = i;
            points[i].y = i * 2;
          }
          if (points[3].y == 6) return 0;
          return 1;
        }
        """,
        # 05
        """
        int main() {
          struct Data d;
          int i;
          for(i = 0; i < 10; i = i + 1) {
            d.arr[i] = i * i;
          }
          d.f = 3.14;
          if (d.arr[5] == 25) return 0;
          return 1;
        }
        """,
        # 06
        """
        int add(int a, int b) {
          return a + b;
        }

        int main() {
          struct Point p = {10, 20};
          int res = add(p.x, p.y);
          if (res == 30) return 0;
          return 1;
        }
        """,
        # 07
        """
        struct Point gp = {100, 200};
        int main() {
          if (gp.x == 100 && gp.y == 200) return 0;
          return 1;
        }
        """,
        # 08
        """
        int main() {
          struct Point p1 = {1, 2};
          struct Point p2;
          p2 = p1;
          p2.x = 3;
          if (p2.y == 2 && p1.x == 1) return 0;
          return 1;
        }
        """,
        # 09
        """
        int main() {
          struct Point pts[2] = {{1,1}, {2,2}};
          if (pts[1].x == 2) return 0;
          return 1;
        }
        """,
        # 10
        """
        int main() {
          struct Mixed m = {1, 2.5, 3};
          if (m.c == 3) return 0;
          return 1;
        }
        """
    ]
    
    for i, content in enumerate(tests):
        idx = f"{i+1:02d}"
        path = f"test/resources/functional/301_struct_{idx}.sy"
        with open(path, "w") as f:
            f.write(data_structs + "\n" + content.strip())
        with open(path.replace(".sy", ".out"), "w") as f:
            f.write("0\n")

if __name__ == "__main__":
    split_loop_tests()
    split_struct_tests()
