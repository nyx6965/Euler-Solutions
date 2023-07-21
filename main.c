#include <stdio.h>

#define MAXLINE 100 /* maximum input line size */

size_t get_line(char s[]);

void copy(char s1[], char s2[], size_t len);
int main() /* find longest line */
{
    int len;            /* current line length */
    int max;            /* maximum length seen so far */
    char line[MAXLINE]; /* current input line */
    char save[MAXLINE]; /* longest line, saved */

    max = 0;
    while ((len = get_line(line)) > 0)
        if (len > max)
        {
            max = len;
            copy(line, save, len);
        }
    if (max > 0)
        printf("%.100s", save);

    return 0;
}

size_t get_line(char s[])
{
    int c = getchar();
    int i = 0;

    while (c != EOF && i != MAXLINE)
    {
        if (c == '\n')
            s[i] = '\0';

        s[i] = c;
        i++;
        c = getchar();
    }

    return sizeof(&s) / sizeof(&s[0]);
}

void copy(char s1[], char s2[], size_t len)
{
    for (size_t i = 0; i < len; i++)
    {
        s2[i] = s1[i];
    }
}