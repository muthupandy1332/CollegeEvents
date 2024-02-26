package Interface;

import Bean.Studentregbean;
import Bean.collegemanageregbean;
import Bean.freeeventapplybean;
import Bean.freeeventbean;

public interface Inter {
public int Stureg(Studentregbean prb);
public int colmanreg(collegemanageregbean prb);
public boolean Stulog(Studentregbean prb);
public boolean colmanlog(collegemanageregbean prb);
public int freeevent(freeeventbean prb,String ab);
public int freeeveapply(freeeventapplybean prb);
public int limiteveapply(freeeventapplybean prb);
public int paideveapply(freeeventapplybean prb);
}
