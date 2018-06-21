import java.util.Random;

public class BubbleSort{
	public void bubbleSort(int[] list){
		int temp = 0;
		
		for(int i=0; i<list.length-1; i++){
			for(int j=list.length-1; j>i; j--){
				if(list[j-1] > list[j]){
					temp = list[j-1];
					list[j-1] = list[j];
					list[j] = temp;
				}
			}

			System.out.format("The %d times:\t", i);
			printAll(list);
		}
	}

	public void bubbleSort_2(int[] list){
		int temp = 0;
		boolean bChange = false;
		
		for(int i=0; i<list.length-1; i++){
			bChange = false;
			
			for(int j=list.length-1; j>i; j--){
				if(list[j-1] > list[j]){
					temp = list[j-1];
					list[j-1] = list[j];
					list[j] = temp;
					bChange = true;
				}
			}

			if(false == bChange){
				break;
			}

			System.out.format("The %d times: \t", i);
			printAll(list);
		}
	}


	public void printAll(int[] list){
		for(int value : list){
			System.out.print(value + "\t");
		}

		System.out.println();
	}

	public static void main(String[] args){
		final int MAX_SIZE = 10;
		int[] array = new int[MAX_SIZE];
		Random random = new Random();
		for(int i=0; i<MAX_SIZE; i++){
			array[i] = random.nextInt(MAX_SIZE);
		}

		BubbleSort bubble = new BubbleSort();
		System.out.println("Before Sort:\t");
		bubble.printAll(array);
		bubble.bubbleSort_2(array);
		System.out.println("After Sort:\t");
		bubble.printAll(array);
		
	}

}
