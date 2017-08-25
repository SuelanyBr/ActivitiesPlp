package plp;

public class Buffer {
	private int cont;
	private Boolean trab;
	
	public Buffer() {
		this.cont = 0;
		this.trab = true;
	}

	public synchronized int add(int id) {
		while (!trab) {
            try {
                System.out.println("Consumidor #" + id + " esperado...");
                wait();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        System.out.println("Consumidor #" + id + " consumiu: produto #" + (this.cont+1));
        trab = false;
        notifyAll();
        return cont;
	}
	
	public synchronized void del(int id, int totalc) {
		
		while (trab) {
            try {
                System.out.println("Produtor #" + id + " esperando...");
                wait();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
		cont = totalc;
        System.out.println("Produtor #" + id + " colocou produto #" + (this.cont+1));
        trab = true;
        notifyAll();

	}
	
	
	public int getCont() {
		return cont;
	}

	public Boolean isTrab() {
		if(!trab) {
			if(cont == 0) {
				return false;
			}
			return true;
		}
		return true;
	}


	public void stopTrab() {
		this.trab = false;
	}
	
	
	
}
