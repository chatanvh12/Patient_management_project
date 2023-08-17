import java.io.FileOutputStream;
import java.io.ObjectOutputStream;

public class exception {
	public exception() {

	}

	public void main() throws Exception {
		exception a1 = new exception();
		FileOutputStream fout = new FileOutputStream("exception.txt");
		ObjectOutputStream out = new ObjectOutputStream(fout);
		out.writeObject(a1);
		out.close();
		fout.close();
	}
}
