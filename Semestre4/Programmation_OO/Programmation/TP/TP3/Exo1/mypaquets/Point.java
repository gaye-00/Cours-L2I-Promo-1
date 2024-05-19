package mypaquets;

public class Point extends Object{

	public Point(int x, int y){
		this.x = x;
		this.y = y;
	}

	public boolean equals(Object o) {
		Point q = (Point)(o);

		return (this.x == q.x && this.y == q.y);
	}

	public int getX() {
		return x;
	}

	public int getY() {
		return y;
	}

	public String toString(){
		return("Point [" + x + ", " + y + "]");
	}

	private int x;
	private int y;
}