import java.io.*;
import java.net.*;

public class ClientUDP {
    public static void main(String[] args) {
        DatagramSocket socket = null;
        try {
            // Création du socket UDP
            socket = new DatagramSocket();
            InetAddress address = InetAddress.getLocalHost();
            System.out.println("Adresse = " + address.getHostName());

            // Données à envoyer
            String message = "Bonjour, Serveur UDP !";
            byte[] data = message.getBytes();

            // Création et envoi du paquet
            DatagramPacket packet = new DatagramPacket(data, data.length, address, 1234);
            socket.send(packet);


            System.out.println("Message envoyé au serveur : " + message);
        } catch (IOException e) {
            e.printStackTrace();
            }
        }
    }


