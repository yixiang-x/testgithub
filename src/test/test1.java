package test;

public class test1 {
		static int a=0;
		public test1() {
			System.out.println("--aa");
			a++;
			System.out.println(a);
		}
		public void a12() {
			System.out.println("--a12");
		}
		public void a22() {
			System.out.println("--a22");
		}
		{
			if (a<0) {
				System.out.println("--a13");
				a++;
				System.out.println(a);
				new test1();
			}
		}
		static {
			System.out.println("static--a13");
			new test1();
		}
	
	public static void main(String[] args) {
		test1 a = new test1();
	}
}
