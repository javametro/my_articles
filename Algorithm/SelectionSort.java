public class SelectionSort{
	public static void selectSort(int[] arr){
		if(arr == null || arr.length == 0){
			return;
		}

		int minIndex = 0;
		for(int i=0; i<arr.length-1; i++){
			minIndex = i;
			
			for(int j=i+1; j<arr.length; j++){
				if(arr[j] < arr[minIndex]){
					minIndex = j;
				}
			}

			if(minIndex != i){
				swap(arr, i, minIndex);
			}
		}
	}

	public static void swap(int[] arr, int i, int j){
		int temp = arr[i];
		arr[i] = arr[j];
		arr[j] = temp;
	}


	public static void main(String[] args){
		int arr[] = {18, 89, 95, 45, 12, 36, 68};
		selectSort(arr);
		for(int i=0; i<arr.length; i++){
			System.out.print(arr[i] + " ");
		}

		System.out.println();
	}
}
