package vo;

public class StudentList
{
    private String num;
    private String name;
    private String korean;
    private String english;
    private String math;

    public String getNum()
    {
        return num;
    }
    public String getName()
    {
        return name;
    }
    public String getKorean()
    {
        return korean;
    }
    public String getEnglish()
    {
        return english;
    }
    public String getMath()
    {
        return math;
    }

    public void setNum(String num)
    {
        this.num = num;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public void setKorean(String korean)
    {
        this.korean = korean;
    }

    public void setEnglish(String english)
    {
        this.english = english;
    }

    public void setMath(String math)
    {
        this.math = math;
    }
}
