public class BubbleSort{
	public static void bubbleSort(int[] arr){
		if(arr == null || arr.length == 0){
			return;
		}

		for(int i=0; i<arr.length-1; i++){
			for(int j=arr.length-1; j>i; j--){
				if(arr[j] < arr[j-1]){
					swap(arr, j-1, j);
				}
			}
		}
	}

	public static void swap(int[] arr, int i, int j){
		int temp = arr[i];
		arr[i] = arr[j];
		arr[j] = temp;
	}

	public static void main(String[] args){
		int arr[] = {11, 9, 6, 33, 21, 13, 7};
		bubbleSort(arr);
		
		for(int i=0; i<arr.length; i++){
			System.out.print(arr[i] + " ");
		}

		System.out.println();
		
		
	}
}
