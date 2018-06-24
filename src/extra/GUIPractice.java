package extra;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class GUIPractice {
	public static void run(){
	JFrame frame = new JFrame("GUI Practice");
	JPanel panel = new JPanel();
	JButton button = new JButton("Attack Superman!");
	frame.setVisible(true);
	panel.add(button);
	frame.add(panel);
	}
public static void main(String[] args) {
	run();
}
}
