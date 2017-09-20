## 欧几里得算法

- 计算两个非负整数p和q的最大公约数：若q是0，则最大公约数为p。否则，将p除以q得到余数r，p和q的最大公约数即为q和r的最大公约数。
<code>
	public static int gcd(int p, int q){
		if(q == 0) return p;
		int r = p % q;
		return gcd(q, r);
	}
</code>