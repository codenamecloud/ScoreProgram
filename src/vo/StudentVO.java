package vo;

import java.util.ArrayList;
import java.util.List;

public class StudentVO
{

    public String num;
    public String name;
    public String korean;
    public String english;
    public String math;
    public String total;
    public String average;

    static List<StudentVO> students_list = new ArrayList<>();

    // 생성자
    public StudentVO(String num, String name, String korean, String english, String math)
    {
        this.num     = num;
        this.name    = name;
        this.korean  = korean;
        this.english = english;
        this.math    = math;
        calculateTotalAndAverage();
        students_list.add(this);
    }

    // 총점과 평균을 계산하는 메서드
    public void calculateTotalAndAverage()
    {
        int totalInt = Integer.parseInt(korean) + Integer.parseInt(english) + Integer.parseInt(math);
        this.total   = String.valueOf(totalInt);
        this.average = String.valueOf(totalInt / 3);
    }

    public static List<StudentVO> getStudentsList()
    {
        return students_list;
    }

    public String getNum()     { return num; }
    public String getName()    { return name; }
    public String getKorean()  { return korean; }
    public String getEnglish() { return english; }
    public String getMath()    { return math; }
    public String getTotal()   { return total; }
    public String getAverage() { return average; }

    public void setNum(String num)         { this.num     = num; }
    public void setName(String name)       { this.name    = name; }
    public void setKorean(String korean)   { this.korean  = korean; }
    public void setEnglish(String english) { this.english = english; }
    public void setMath(String math)       { this.math    = math; }
    public void setTotal(String total)     { this.total   = total; }
    public void setAverage(String average) { this.average = average; }

}
