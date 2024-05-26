// print version --version
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <getopt.h>


void print_version() {
    // get version from file VERSION
    FILE *fp = fopen("$HOME/local/fish_installer/VERSION", "r");
    if (fp == NULL) {
        fprintf(stderr, "Error: VERSION file not found\n");
        exit(1);
    }
    // read version from file
    char VERSION[100];
    // get complet line
    fgets(VERSION, 100, fp);
    fclose(fp);
    printf("%s\n", VERSION);
}

void uninstall() {
    system("bash $HOME/local/fish_installer/script/uninstall.sh");
}

void print_help() {
    printf("Usage: fish_installer [OPTION]\n");
    printf("Install fish shell\n");
    printf("\n");
    printf("Options:\n");
    printf("  -h, --help       print this help\n");
    printf("  -v, --version    print version\n");
    printf("  -u, --uninstall  uninstall fish shell\n");
}

int main(int argc, char *argv[]) {
    int opt;
    int option_index = 0;
    static struct option long_options[] = {
        {"version", no_argument, 0, 'v'},
        {"uninstall", no_argument, 0, 'u'},
        {"help", no_argument, 0, 'h'},
        {0, 0, 0, 0}
    };


    while ((opt = getopt_long(argc, argv, "huv", long_options, &option_index)) != -1) {
        switch (opt) {
            case 'h':
                print_help();
                return 0;
            case 'v':
                print_version();
                return 0;
            case 'u':
                uninstall();
                return 0;
            default:
                return 1;
        }
    }

    return 0;
}
