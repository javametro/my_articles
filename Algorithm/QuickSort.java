public class QuickSort{
	public static int partition(int[] arr, int left, int right){
		int pivotKey = arr[left];
		int pivotPointer = left;
		
		while(left < right){
			while(left < right && arr[right] >= pivotKey)
				right--;
			arr[left] = arr[right];
			while(left < right && arr[left] <= pivotKey)
				left++;
			arr[right] = arr[left];

//			swap(arr, left, right);
		}

//		swap(arr, pivotPointer, left);
		arr[left] = pivotKey;
		return left;
	}


	public static void quickSort(int[] arr, int left, int right){
		if(left >= right)
			return;

		int pivotPos = partition(arr, left, right);
		quickSort(arr, left, pivotPos-1);
		quickSort(arr, pivotPos+1, right);
	}

	public static void sort(int[] arr){
		if(arr == null || arr.length == 0)
			return;

		quickSort(arr, 0, arr.length-1);
	}

	public static void swap(int[] arr, int left, int right){
		int temp = arr[left];
		arr[left] = arr[right];
		arr[right] = temp;
	}


	public static void main(String[] args){
		int arr[] = {18, 89, 56, 46, 232, 11, 6, 9, 3, 15};
		sort(arr);
		for(int i=0; i<arr.length; i++){
			System.out.print(arr[i] + " ");
		}

		System.out.println();
	}
}
