import java.awt.*;  
import javax.swing.JFrame;  
  
public class peaveyBinFinder extends Canvas{  
      
    public void paint(Graphics g) {  
  
        Toolkit t=Toolkit.getDefaultToolkit();  
        Image i=t.getImage("map.PNG");  
        g.drawImage(i, 60,40,this);  
          
    }  
        public static void main(String[] args) {  
        peaveyBinFinder m=new peaveyBinFinder();  
        JFrame f=new JFrame();  
        f.add(m);  
        f.setSize(1200,1200);  
        f.setVisible(true);  
    }  
  
} 