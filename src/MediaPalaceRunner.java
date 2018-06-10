import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

import javazoom.jl.decoder.JavaLayerException;

public class MediaPalaceRunner implements MouseListener {
	JFrame frame = new JFrame("Media Palace");
	JPanel panel = new JPanel();
	JLabel label = new JLabel();
	public static void main(String[] args) throws MalformedURLException, FileNotFoundException, JavaLayerException {
		MediaPalaceRunner run = new MediaPalaceRunner();
	
		
		
	}
	MediaPalaceRunner() throws MalformedURLException, FileNotFoundException, JavaLayerException{
		MediaPalace media = new MediaPalace();
		frame.setVisible(true);
		panel.add(media.loadImageFromTheInternet("https://i.ytimg.com/vi/JilHZ_DdBYg/maxresdefault.jpg"));
		label.setText("Press on me to play a song!");
		panel.add(label);
		frame.add(panel);
		frame.pack();
		frame.addMouseListener(this);
		
	}
	
	
	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
	
	}
	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void mousePressed(MouseEvent e) {
		// TODO Auto-generated method stub
		MediaPalace media = new MediaPalace();
		try {
			media.playMp3FromComputer("eyeofthetiger.mp3");
		} catch (FileNotFoundException | JavaLayerException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println("Clicked");
	}

}
