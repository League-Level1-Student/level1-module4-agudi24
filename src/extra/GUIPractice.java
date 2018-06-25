package extra;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.URL;

import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class GUIPractice implements ActionListener{
	  int shealth = 100;
	  int bhealth = 100;
	  JButton b = new JButton("Attack Superman!");
	  JButton b2 = new JButton("Attack Batman!");
	  JTextField text = new JTextField("Superman Health:" + shealth);
	  JTextField text2 = new JTextField("Batman Health:" + bhealth);
	  
	public void run(){
	String batman = "Batman.jpg";
	String superman = "Superman.jpg";
	JFrame frame = new JFrame("GUI Practice");
	JPanel panel = new JPanel();
	JLabel label = loadImage(batman);
	JLabel label2 = loadImage(superman);
	frame.setVisible(true);
	frame.setSize(1000, 800);
	panel.add(b);
	panel.add(b2);
	panel.add(text);
	panel.add(text2);
	panel.add(label);
	panel.add(label2);
	frame.add(panel);
	b.addActionListener(this);
	b2.addActionListener(this);
	b.setLocation(200, 600);
	if (bhealth == 0) {
		JOptionPane.showMessageDialog(null, "Batman is dead");
	  }
	if (shealth == 0) {
		JOptionPane.showMessageDialog(null, "Superman is dead");
	  }
	//frame.add(panel);
	//frame.pack();
	
	
	}
public static void main(String[] args) {
	GUIPractice gui2 = new GUIPractice();
	gui2.run();
}
private JLabel loadImage(String fileName) {
	URL imageURL = getClass().getResource(fileName);
	Icon icon = new ImageIcon(imageURL);
	return new JLabel(icon);
}
@Override
public void actionPerformed(ActionEvent e) {
	// TODO Auto-generated method stub
	if(b == e.getSource()) {
	shealth-=10;
	text.setText("Superman Health:" + shealth);
	}
	if(b2 == e.getSource()) {
		bhealth-=10;
		text.setText("Batman Health:" + bhealth);
		}
}

}
