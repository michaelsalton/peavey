import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Point;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;
import java.util.Scanner;

public class Draw extends userString{

    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);

        //System.out.println("Enter bin number: ");
        //String binNumber = scan.nextLine();

        //String number = userString.binNumber;

        //System.out.println(binNumber.substring(0, 1));

        scan.close();

        new Draw();
    }

    public Draw() {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                JFrame frame = new JFrame();
                frame.add(new TestPane());
                frame.pack();
                frame.setLocationRelativeTo(null);
                frame.setVisible(true);
            }
        });
    }

    public class TestPane extends JPanel {

        private BufferedImage image;

        public TestPane() {
            try {
                image = ImageIO.read(new File("map.PNG"));
            } catch (IOException ex) {
                ex.printStackTrace();
            }

            addMouseListener(new MouseAdapter() {
                @Override
                public void mouseClicked(MouseEvent e) {
                    if (image != null) {
                        Point p = e.getPoint();
                        Graphics2D g2d = image.createGraphics();
                        g2d.setColor(Color.GREEN);
                        g2d.fillOval(p.x - 4, p.y - 4, 8, 8);
                        g2d.dispose();
                        repaint();
                    }
                }
            });
        }

        @Override
        public Dimension getPreferredSize() {
            return image == null ? new Dimension(200, 200) : new Dimension(image.getWidth(), image.getHeight());
        }

        @Override
        protected void paintComponent(Graphics g){
            super.paintComponent(g);
            Graphics2D g2d = (Graphics2D) g.create();
            g2d.setColor(Color.GREEN);
            g2d.drawImage(image, 0, 0, this);

            switch(binNumber.substring(0, 2)){
                case "AP":
                    switch(binNumber.charAt(2)){
                        case '1':
                            g2d.fillRect(650, 715, 30, -340);
                            break;
                        case '2':
                            g2d.fillRect(822, 755, 30, -340);
                            break;
                        case '3':
                            g2d.fillRect(792, 755, 30, -340);
                            break;
                        case '4':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                        case '5':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                        case '8':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                    }
                case "BP":
                    switch(binNumber.charAt(2)){
                        case '2':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                        case '3':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                        case '4':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                    }
                case "CP":
                    switch(binNumber.charAt(2)){
                        case '3':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                        case '4':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                        case '6':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                    }
                case "TY":
                    switch(binNumber.charAt(2)){
                        case '1':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                        case '2':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                        case '3':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                        case '4':
                            g2d.fillRect(762, 755, 30, -340);
                            break;
                    }
                case "FA":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "FB":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "FC":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "FD":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "FE":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "FF":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "FG":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "FH":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EA":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EB":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EC":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "ED":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EE":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EF":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EG":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EH":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EI":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EJ":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "EK":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "TJ":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "TK":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "TM":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "TL":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "TG":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "E4":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "C4":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "CK":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "WR":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "DL":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "ND":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
                case "YA":
                    g2d.fillRect(762, 755, 30, -340);
                    break;
            }
            
            g2d.dispose();
        }
    }
}