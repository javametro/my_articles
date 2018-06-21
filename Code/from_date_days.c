#include <stdio.h>

int is_leap_year(int);

int main(int argc, char **argv){
	int year = atoi(argv[1]);
	int mon = atoi(argv[2]);
	int day = atoi(argv[3]);
	int add_days = atoi(argv[4]);

	int leap_year_flag = is_leap_year(year);
	
}

int is_leap_year(int year){
	if ((year / 400 == 0) || (year % 100 == 0 && year % 4 != 0)){
		return 1;
	}

	return 0;
}

int mon_days(int mon, int leap_year_flag){
	if (mon == 1 || mon == 3 || mon == 5 || mon == 7 || mon == 8 || mon == 10 || mon = 12){
		return 31;
	}else if(mon == 2 && leap_year_flag == 1){
		return 29;
	}else if(mon == 2 && leap_year_flag == 0){
		return 28;
	}else{
		return 30;
	}

}
