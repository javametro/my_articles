public class InsertSort{
	public static void insertSort(int[] arr){
		if(arr == null || arr.length == 0){
			return;
		}

		for(int i=1; i<arr.length; i++){
			int j = i;
			int target = arr[i];
			
			while(j>0 && target < arr[j-1]){
				arr[j] = arr[j-1];
				j--;
			}

			arr[j] = target;
		}
	}


	public static void main(String[] args){
		int arr[] = {3, 15, 8, 27, 9, 13, 5, 12, 10, 27};
		insertSort(arr);
		for(int i=0; i<arr.length; i++){
			System.out.print(arr[i] + " ");
		}

		System.out.println();
	}
}
