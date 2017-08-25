package plp;

public class Produtor extends Thread {

	private Buffer b;
	private int id;
	private int producao;
	
	public Produtor(int id, Buffer bufferCompartilhado, int producaoTotal) {
		this.b = bufferCompartilhado;
		this.id = id;
		this.producao = producaoTotal;
	}

	public void run() {
        for (int i = 0; i < producao; i++) {
            b.del(id, i);
        }
        System.out.println("Produtor #" + id + " concluido!");
    }

}
