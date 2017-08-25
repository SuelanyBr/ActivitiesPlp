package plp;

public class Consumidor extends Thread{
	
	private Buffer b;
	private int id;
	private int totalConsumir;
	
	public Consumidor(int id, Buffer bufferCompartilhado, int totalConsumir) {
		this.b = bufferCompartilhado;
		this.id = id;
		this.totalConsumir = totalConsumir;
	}

	public void run() {
        for (int i = 0; i < totalConsumir; i++) {
            b.add(id);
        }
        System.out.println("Consumidor #" + id + " concluido!");
    }

}
