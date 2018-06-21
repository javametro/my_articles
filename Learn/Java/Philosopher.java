
class Philosopher extends Thread{
	private boolean eating;
	private Philosopher left;
	private Philosopher right;
	private ReentrantLock table;
	private Condition condition;
		
//	private ReentrantLock leftChopstick, rightChopstick;
	
//	private Chopstick first, second;
	private Random random;

	public Philosopher(ReentrantLock table){
		eating = false;
		this.table = table;
		condition = table.newCondition();
		random = new Random();
	}

	public void setLeft(Philosopher left){
		this.left = left;
	}

	public void setRight(Philosopher right){
		this.right = right;
	}
	//public Philosopher(ReentrantLock leftChopstick, ReentrantLock rightChopstick){
	//	//if(left.getId() < right.getId()){
	//	//	first = left;
	//	//	second = right;	
	//	//}else{
	//	//	first = right;
	//	//	second = left;
	//	//}
	//	this.leftChopstick = leftChopstick;
	//	this.rightChopstick = rightChopstick;
	//
	//	random = new Random();
	//}

	//public void run(){
	//	try{
	//		while(true){
	//			Thread.sleep(random.nextInt(1000));
//	//			synchronized(first){
//	//				synchronized(second){
//	//					Thread.sleep(random.nextInt(1000));
//	//				}
//	//			}
	//			
	//			leftChopstick.lock();
	//			try{
	//				if(rightChopstick.tryLock(1000, TimeUnit.MILLISECONDS)){
	//					try{
	//						Thread.sleep(random.nextInt(1000));		
	//					}finally{
	//						rightChopstick.unlock();
	//					}
	//				}else{
	//					
	//				}
	//			}finally{
	//				leftChopstick.unlock();
	//			}
	//		}
	//	}catch(InterruptedException e){}
	//}


	public void run(){
		try{
			while(true){
				think();
				eat();
			}
		}catch(InterruptedException e){}
	}


	private void think() throws InterruptedException{
		table.lock();
		try{
			eating = false;
			left.condition.signal();
			right.condition.signal();
			
		}finally{
			table.unlock();
		}

		Thread.sleep(1000);
	}

	private void eat() throws InterruptedException{
		table.lock();
		try{
			while(left.eating || right.eating){
				condition.await();
			}

			eating = true;
			
		}finally{
			table.unlock();
		}

		Thread.sleep(1000);
	}
}
