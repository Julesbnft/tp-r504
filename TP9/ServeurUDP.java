import java.io.*;
import java.net.*;

public class ServeurUDP {
    public static void main(String[] args) {
        DatagramSocket socket = null;
        try {
            // Création du socket UDP pour écouter sur le port 1234
            socket = new DatagramSocket(1234);
            System.out.println("Serveur UDP en attente de données...");

            while (true) {
                // Préparation du paquet pour recevoir les données
                DatagramPacket packet = new DatagramPacket(new byte[1024], 1024);
                socket.receive(packet); // Réception du paquet

                // Conversion des données reçues en chaîne de caractères
                String message = new String(packet.getData(), 0, packet.getLength());
                System.out.println("Message reçu : " + message);
				sock.send(packet);
            }
        } catch (IOException e) {
            e.printStackTrace();
            }
        }
    }



