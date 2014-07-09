package lab5_javapad;

//MenuTest.java
//Demonstrating menus
import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
import javax.swing.JApplet;  
import java.awt.Graphics;    


public class javapad_app extends JApplet implements ActionListener 
{
private Color colorValues[] = 
   { Color.black, Color.blue, Color.red, Color.green }; 
private Color colorValues1[] = { Color.cyan, Color.blue, Color.red, Color.green };   
private JRadioButtonMenuItem colorItems[],colorItems1[],  fonts[];
private JCheckBoxMenuItem styleItems[];
private JLabel display;
private JComboBox Display,Display1;
private ButtonGroup fontGroup, colorGroup,colorGroup1 ;
private int style;
private JMenu colo[];
public void init()
{
    

   JMenuBar bar = new JMenuBar();  // create menubar
   setJMenuBar( bar );  // set the menubar for the JFrame

   // create File menu and Exit menu item
   JMenu fileMenu = new JMenu( "File" );
   fileMenu.setMnemonic( 'F' );
   

   JMenuItem exitItem = new JMenuItem( "Exit" );
   exitItem.setMnemonic( 'x' );
   exitItem.addActionListener(
      new ActionListener() {
         public void actionPerformed( ActionEvent e )
         {
            System.exit( 0 );
         }
      }
   );
   fileMenu.add( exitItem );
   bar.add( fileMenu );    // add File menu

   
  
   // create the Format menu, its submenus and menu items
   JMenu formatMenu = new JMenu( "Format" );  
   formatMenu.setMnemonic( 'r' );
   String colors[] = 
      { "Black", "Blue", "Red", "Green" };
   
   JMenu colorMenu1 = new JMenu( "Color" );
   colorMenu1.setMnemonic( 'C' );
   colo=new JMenu[2];
   colo[0]=new JMenu("Foreground");
   colorItems = new JRadioButtonMenuItem[ colors.length ];
   colorGroup = new ButtonGroup();
   ItemHandler itemHandler = new ItemHandler();

   for ( int i = 0; i < colors.length; i++ ) {
      colorItems[ i ] = 
         new JRadioButtonMenuItem( colors[ i ] );
      colo[0].add( colorItems[ i ] );
      colorGroup.add( colorItems[ i ] );
      colorItems[ i ].addActionListener( itemHandler);
   }

   colorItems[ 0 ].setSelected( true );
   
   
   colorMenu1.add(colo[0]);
   String colors1[] = 
      { "cyan", "Blue", "Red", "Green" };
   
   colo[1]=new JMenu("Background");
   colorItems1 = new JRadioButtonMenuItem[ colors1.length ];
   colorGroup1 = new ButtonGroup();
  // ItemHandler itemHandler = new ItemHandler();

   for ( int i = 0; i < colors1.length; i++ ) {
      colorItems1[ i ] = 
         new JRadioButtonMenuItem( colors1[ i ] );
      colo[1].add( colorItems1[ i ] );
      colorGroup1.add( colorItems1[ i ] );
      colorItems1[ i ].addActionListener( itemHandler );
   }

   colorItems1[ 0 ].setSelected( true );
  
   
   colorMenu1.add(colo[1]);
 formatMenu.add(colorMenu1);
 bar.add( formatMenu );  
   formatMenu.addSeparator();

   // create Font submenu
   String fontNames[] = 
      { "TimesRoman", "Courier", "Helvetica" };
   JMenu fontMenu = new JMenu( "Font" ); 
   fontMenu.setMnemonic( 'n' );
   fonts = new JRadioButtonMenuItem[ fontNames.length ];
   fontGroup = new ButtonGroup();

   for ( int i = 0; i < fonts.length; i++ ) {
      fonts[ i ] =
         new JRadioButtonMenuItem( fontNames[ i ] );
      fontMenu.add( fonts[ i ] );
      fontGroup.add( fonts[ i ] );
      fonts[ i ].addActionListener( itemHandler );
   }

   fonts[ 0 ].setSelected( true );
   fontMenu.addSeparator();

 
 
   
   JMenu helpMenu = new JMenu( "Help" );
   helpMenu.setMnemonic( 'H' );
   JMenuItem aboutItem = new JMenuItem( "About..." );
   aboutItem.setMnemonic( 'A' );
   aboutItem.addActionListener(
      new ActionListener() {
         public void actionPerformed( ActionEvent e )
         {
            JOptionPane.showMessageDialog( javapad_app.this,
               "To Create JavaPad we need follows: \n • The use of advanced SWING components\n •	The use of Graphics methods",

               "About", JOptionPane.PLAIN_MESSAGE );
         }
      }
   );
   helpMenu.add( aboutItem );
   bar.add(helpMenu);
   
 
   JPanel p=new JPanel ( );
   
   
   //fonts
   String fontnames[] = 
      { "TimesRoman", "Courier", "Helvetica" };
   Display=new JComboBox(fontnames);
   Display.setEditable(true);
   Display.addActionListener(this);
   p.add(Display);
   getContentPane().add( p,"North");
  
   
   //style
   String styleNames1[] = { "30","36","42","46","50","56" };
   Display1=new JComboBox(styleNames1);
   Display1.setEditable(true);
   

   //MyActionListener actionListener = new MyActionListener();
   
 
   Display1.addActionListener(this);
   p.add(Display1);
   getContentPane().add( p,"North");
   
   
   
   
   display = new JLabel(
      "Rajbir Kaur ", SwingConstants.CENTER );
   display.setForeground( colorValues[ 0 ] );
   display.setFont( 
      new Font( "TimesRoman", Font.PLAIN, 72 ) );

   getContentPane().setBackground( Color.cyan );
   getContentPane().add( display, BorderLayout.CENTER );
   
  
   
   setSize( 500, 200 );
   setVisible(true);
}


class ItemHandler implements ActionListener {
   public void actionPerformed( ActionEvent e )
   {
 	  for ( int i = 0; i < colorItems.length; i++ ) 
 	    	if ( colorItems[ i ].isSelected() ) {
 	               display.setForeground( colorValues[ i ] );
 	               break;
 	            }
 	    	 
 	  
      for ( int i = 0; i < colorItems1.length; i++ ) 
     	 
	            if ( colorItems1[ i ].isSelected() ) {
	               getContentPane().setBackground( colorValues1[ i ] );
	               break;
	            }
     	
	            

     

      repaint();   
   }
}

public void actionPerformed(ActionEvent evt) {
	   style = 0;
	    JComboBox source = (JComboBox) evt.getSource();
	    String item = (String) source.getSelectedItem();
	    if(item == "TimesRoman" || item == "Courier" || item == "Helvetica")
	    {
	    display.setFont(new Font(item, Font.PLAIN, 72));
	    }
	    else
	    {
	    JComboBox source1 = (JComboBox) evt.getSource();
	    String item1 = (String)source1.getSelectedItem();
	    int item2 = Integer.parseInt(item1);
	    display.setFont(new Font(item,Font.PLAIN,item2));
		              
	    }     

 repaint();
}
}




