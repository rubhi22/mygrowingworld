package lab4gpa;

import java.awt.Component;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import javax.swing.JApplet;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class CalculateGPA_app extends JApplet{

	

		
		
		
		private String gradepoints[]={"4.5 GRADE:A+","4.0 GRADE:A","3.5 GRADE:B+","3.0 GRADE B","2.5 GRADE C+","2.0 GRADE:C","1.5 GRADE D+","1.0 GRADE:D","0 GRADE :F"};
		public  String[] comp1={"COMP228","COMP214","GNED500","COMP224","ENGL253","COMP123","COMP226","COMP229","COMP240","MATH185"};
		private JComboBox gradept [] = new JComboBox [comp1.length];


		String[] no = {"1","2","3","4","5","6","7","8","9","10"};
		private JButton button;
		private String hours[]={"1","2","3","4"};
		private JComboBox hour [] = new JComboBox[comp1.length];
		private int noOfCourses=0;

		JLabel creditHoursEarnedLabel=new JLabel("Credit hours earned:");
		JLabel currentGPALabel=new JLabel(" Current GPA");
		JLabel noOfCoursesLabel=new JLabel(" Number of courses");

		JLabel btn1[]={ new JLabel("1"), new JLabel("2"), new JLabel("3"), new JLabel("4"),new JLabel("5"), new JLabel("6"), new JLabel("7"), new JLabel("8") , new JLabel("9"), new JLabel("10") };
		JLabel btn[]= { new JLabel("COMP228"), new JLabel("COMP214") ,new JLabel("GNED500"), new JLabel("COMP224"), new JLabel("ENGL253"), new JLabel("COMP123"), new JLabel("COMP226"), new JLabel("COMP229"), new JLabel("COMP240"), new JLabel("MATH185")};
		JLabel btn2[]=new JLabel[5];
		JLabel numberLabel=new JLabel(" Nr");
		JLabel courseLabel=new JLabel(" Course");
		JLabel creditHourHeadLabel=new JLabel(" Credit Hours");
		
		JLabel gradePointsLabel=new JLabel(" Grade Points");
		JTextField creditHoursTextBox = new JTextField(5);
		JTextField gpaTextBox = new JTextField(10);
		GridBagConstraints c = null;
		GridBagLayout gridBag = null;
		Container pane = null;
		JComboBox no_courses=new JComboBox(no);
		private int curNoOfCourses = 0;

		JComboBox hourc[] = {new JComboBox(hours), new JComboBox(hours), new JComboBox(hours), new JComboBox(hours), new JComboBox(hours), new JComboBox(hours), new JComboBox(hours), new JComboBox(hours),new JComboBox(hours),new JComboBox(hours),new JComboBox(hours),new JComboBox(hours) };
		JComboBox gradepoint[] ={new JComboBox(gradepoints),new JComboBox(gradepoints),new JComboBox(gradepoints),new JComboBox(gradepoints),new JComboBox(gradepoints),new JComboBox(gradepoints),new JComboBox(gradepoints),new JComboBox(gradepoints),new JComboBox(gradepoints),new JComboBox(gradepoints)};
		
		private ActionListener coursesCBListener = new ActionListener() {  
			public void actionPerformed(ActionEvent evt) {  
				JComboBox jcmbType = (JComboBox) evt.getSource();
				noOfCourses = Integer.parseInt((String) jcmbType.getSelectedItem());
				c.gridx=0;
				c.gridy=3;
				c.gridwidth = 0;
				c.gridheight = 1;
				c.weightx = c.weighty = 0.0;
				add(numberLabel,c);
				c.gridx=1;
				c.gridy=3;
				c.gridwidth = 0;
				c.gridheight = 1;
				add(courseLabel,c);
				c.gridx=3;
				c.gridy=3;
				c.gridwidth = 0;
				c.gridheight = 1;
				add(creditHourHeadLabel,c);
				
				c.gridx=7;
				c.gridy=3;
				c.gridwidth = 0;
				c.gridheight = 1;
				add(gradePointsLabel,c);

				for( int i=0;i<curNoOfCourses;i++)
				{
					btn1[i].setVisible(false);
					btn[i].setVisible(false);
					hourc[i].setVisible(false);
					gradepoint[i].setVisible(false);
					
					invalidate();
				}
				
				for( int i=0;i<noOfCourses;i++)
				{
					c.gridx = 0;
					c.gridy = 4+i;
					c.gridwidth = 0;
					c.gridheight = 1;
					btn1[i].setVisible(true);
					add(btn1[i],c);
					c.gridx = 1;
					c.gridy = 4+i;
					c.gridwidth = 1;
					c.gridheight = 1;
					c.weightx =1;
					btn[i].setVisible(true);
					add(btn[i],c);
					c.gridx = 3;
					c.gridy = 4+i;
					c.gridwidth = 1;
					c.gridheight = 1;
					hour [i] = hourc[i]; 				
					hourc[i].setVisible(true);
					add(hourc[i],c);
					gradept [i] = gradepoint[i];
					c.gridx = 7;
					c.gridy = 4+i;
					c.gridwidth = 1;
					c.gridheight = 1;
					gradepoint[i].setVisible(true);
					
					add(gradepoint[i],c);
					
					
				}

				invalidate();
				curNoOfCourses = noOfCourses;
			}
		};


		public void init()
		{
			gridBag = new GridBagLayout();
			
			setLayout(gridBag);
			c = new GridBagConstraints();
			c.fill = GridBagConstraints.BOTH; // components grow in both dimensions
			c.insets = new Insets(7, 7, 7, 7); 

			c.gridx = 0;
			c.gridy = 0;
			c.gridwidth = 1;
			c.gridheight = 1;
			c.weightx = c.weighty = 0.0;
			
			add(creditHoursEarnedLabel,c);
			c.gridx = 1;
			c.gridy = 0;
			c.gridwidth = 1;
			c.gridheight = 1;
			c.weightx = c.weighty = 0.0;
			add(creditHoursTextBox, c);
			c.gridx = 9;
			c.gridy = 0;
			c.gridwidth = 1;
			c.gridheight = 1;
			c.weightx = c.weighty = 0.0;
			add(currentGPALabel, c);
			c.gridx = 10;
			c.gridy = 0;
			c.gridwidth = 1;
			c.gridheight =1;
			c.weightx = c.weighty = 0.0;
			
			add(gpaTextBox, c);
			c.gridx = 9;
			c.gridy = 1;
			c.gridwidth = 1;
			c.gridheight = 1;
			c.weightx = c.weighty = 0.0;
			add(noOfCoursesLabel, c);
			
			c.gridx = 10;
			c.gridy = 1;
			c.gridwidth = 1;
			c.gridheight = 1;
			c.weightx = c.weighty = 0.0;

			add(no_courses,c);
			no_courses.addActionListener(coursesCBListener);
			button=new JButton("calculate");
			button.addActionListener(calcCBListener);
			add(button);

		}
		private ActionListener calcCBListener = new ActionListener() {  
			public void actionPerformed(ActionEvent evt){

				if(evt.getSource() == button){
					float gpa=0f;
					for (int index=0; index < noOfCourses;index++){

						if(gradept[index].getSelectedItem().toString().equals("4.5 GRADE:A+")){
							gpa += (Float.parseFloat("4.5") * Float.parseFloat(hour[index].getSelectedItem().toString())) / Float.parseFloat(hour[index].getSelectedItem().toString());
							System.out.println(gpa);
						}else if (gradept[index].getSelectedItem().toString().equals("4.0 GRADE:A")){
							gpa += (Float.parseFloat("4.0") * Float.parseFloat(hour[index].getSelectedItem().toString())) / Float.parseFloat(hour[index].getSelectedItem().toString());			   
						}else if (gradept[index].getSelectedItem().toString().equals("3.5 GRADE:B+")){
							gpa += (Float.parseFloat("3.5") * Float.parseFloat(hour[index].getSelectedItem().toString())) / Float.parseFloat(hour[index].getSelectedItem().toString());			   
						}else if (gradept[index].getSelectedItem().toString().equals("3.0 GRADE B")){
							gpa += (Float.parseFloat("3.0") * Float.parseFloat(hour[index].getSelectedItem().toString())) / Float.parseFloat(hour[index].getSelectedItem().toString());			   
						}else if (gradept[index].getSelectedItem().toString().equals("2.5 GRADE C+")){
							gpa += (Float.parseFloat("2.5") * Float.parseFloat(hour[index].getSelectedItem().toString())) / Float.parseFloat(hour[index].getSelectedItem().toString());			   
						}else if (gradept[index].getSelectedItem().toString().equals("2.0 GRADE:C")){
							gpa += (Float.parseFloat("2.0") * Float.parseFloat(hour[index].getSelectedItem().toString())) / Float.parseFloat(hour[index].getSelectedItem().toString());			   
						}else if (gradept[index].getSelectedItem().toString().equals("1.5 GRADE D+")){
							gpa += (Float.parseFloat("2.0") * Float.parseFloat(hour[index].getSelectedItem().toString())) / Float.parseFloat(hour[index].getSelectedItem().toString());			   
						}else if (gradept[index].getSelectedItem().toString().equals("1.0 GRADE:D")){
							gpa += (Float.parseFloat("1.5") * Float.parseFloat(hour[index].getSelectedItem().toString())) / Float.parseFloat(hour[index].getSelectedItem().toString());			   
						}else if (gradept[index].getSelectedItem().toString().equals("0 GRADE :F")){
							gpa += (Float.parseFloat("1.0") * Float.parseFloat(hour[index].getSelectedItem().toString())) / Float.parseFloat(hour[index].getSelectedItem().toString());			   
						
						}
					}

					gpa = gpa / noOfCourses ;
					gpaTextBox.setText(String.valueOf(gpa));
				}
				int hourss=0;
				for(int j=0;j< noOfCourses;j++)
				{

					hourss += (Integer.parseInt(hour[j].getSelectedItem().toString()));
				}
				creditHoursTextBox.setText(String.valueOf(hourss));

			}
		};

		

		
	}


