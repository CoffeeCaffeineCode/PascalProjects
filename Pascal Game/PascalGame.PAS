program PascalGame;

uses
    crt, graph;

{------------------------Age------------------------}
function Age (var s:integer): integer;
    var
        ageInput : integer;
    begin
        cleardevice;
        setcolor(12);
        settextstyle(1,0,3);
        outtextxy(10,230,'How Old Are You : ');
        readln(ageInput);

        case ageInput of
            1..20:begin
                s := s + 20;
                cleardevice;
                setbkcolor(16);
                setcolor(14);
                outtextxy(10,200,'  You Scored 20 Points');
            end;
            21..50:begin
                s := s + 40;
                cleardevice;
                setbkcolor(16);
                setcolor(10);
                outtextxy(10,200,'You Are Very LUCKY! You');
                outtextxy(10,250,'  You Scored 40 Points');
            end;
            51..100:begin
                s := s + 30;
                cleardevice;
                setbkcolor(16);
                setcolor(13);
                outtextxy(10,200,'  You Scored 30 Points');
            end;
        end;
   
        Age := s;
        delay(2000);
    end;

{------------------------Negative Points------------------------}
function NegativePoints(var s:integer): integer;

    begin

        s := s - 20;

        cleardevice;
        setbkcolor(16);
        setcolor(4);
        outtextxy(10,200,'You Lost 20 Points ');
        outtextxy(10,250,'          :( ');

        NegativePoints := s;
        delay(2000);

    end;

{------------------------Joke------------------------}
function Joke (var s:integer): integer;

    begin

        s := s + 10;

        cleardevice;
        setcolor(6);
        settextstyle(1,0,2);
        setfillstyle(9,8);
        floodfill(3,4,8);

        outtextxy(10,50,'           JOKE!!!!! ');
        outtextxy(10,90,'A boss tells his new employee:"I ');
        outtextxy(10,120,'will give u 8$ an hour starting today');
        outtextxy(10,150,'and in three months I will raise it');
        outtextxy(10,180,'to 10$ an hour.So when whould u');
        outtextxy(10,210,'like to start?"');
        outtextxy(10,240,'the employe answered:"In 3 months!!!"');
      
        setcolor(5);
        outtextxy(10,290,'     Good News! ');
        outtextxy(10,320,'You Scored 10 Points');

        Joke := s;
        delay(3000);

    end;

{------------------------Choose Color------------------------}
function Color(var s:integer): integer;

    var
        l:integer;
    
    begin

        cleardevice;

        setcolor(9);
        setfillstyle(1,9);
        circle(135,175,50);
        floodfill(135,175,9);
        setcolor(16);
        outtextxy(130,155,'1');

        setcolor(13);
        setfillstyle(1,13);
        circle(255,175,50);
        floodfill(255,175,13);
        setcolor(16);
        outtextxy(250,155,'2');

        setcolor(2);
        setfillstyle(1,2);
        circle(375,175,50);
        floodfill(375,175,2);
        setcolor(16);
        outtextxy(370,155,'3');

        setcolor(4);
        setfillstyle(1,4);
        circle(495,175,50);
        floodfill(495,175,4);
        setcolor(16);
        outtextxy(490,155,'4');

        setcolor(14);
        settextstyle(1,0,2);
        outtextxy(10,10,'Enter the Corresponding Color Number : ');
        writeln('Enter the Corresponding Color Number : ');
        readln(l);

        case l of
            1:begin
                s := s + 20;
                cleardevice;
                setcolor(9);
                outtextxy(10,200,'   Great Choice!');
                outtextxy(10,250,'   You Scored 20 Points');
            end;
            2:begin
                cleardevice;
                s := s + 10;
                setcolor(13);
                outtextxy(10,200,'   Great Choice!');
                outtextxy(10,250,'   You Scored 10 Points');
            end;
            3:begin
                cleardevice;
                s := s + 30;
                setcolor(2);
                outtextxy(10,200,'   Great Choice!');
                outtextxy(10,250,'   You Scored 30 Points');
            end;
            4:begin
                cleardevice;
                s := s + 40;
                setcolor(4);
                outtextxy(10,200,'   Great Choice!');
                outtextxy(10,250,'   You Scored 40 Points');
            end;
        end;

        Color := s;
        delay(2000);

    end;

{------------------------Choose a Numbers------------------------}
procedure ChooseNumber(var s:integer);
    var
        number : integer;
        strS: String;

    begin

        cleardevice;        

        setcolor(14);
        settextstyle(1,0,1);
        outtextxy(10,400,'Enter a Number between 0 and 9: ');
        outtextxy(10,430,'Press 10 to End The Game');

        setcolor(1);
        setfillstyle(1,1);
        circle(135,55,50);
        floodfill(135,55,1);

        setcolor(10);
        setfillstyle(1,10);
        circle(255,55,50);
        floodfill(255,55,10);

        setcolor(5);
        setfillstyle(1,5);
        circle(375,55,50);
        floodfill(375,55,5);

        setcolor(11);
        setfillstyle(1,11);
        circle(495,55,50);
        floodfill(495,55,11);

        setcolor(4);
        setfillstyle(1,4);
        circle(195,175,50);
        floodfill(195,175,4);

        setcolor(14);
        setfillstyle(1,14);
        circle(315,175,50);
        floodfill(315,175,14);

        setcolor(9);
        setfillstyle(1,9);
        circle(435,175,50);
        floodfill(435,175,9);

        setcolor(2);
        setfillstyle(1,2);
        circle(255,295,50);
        floodfill(255,295,2);

        setcolor(13);
        setfillstyle(1,13);
        circle(375,295,50);
        floodfill(375,295,13);

        setcolor(12);
        setfillstyle(1,12);
        circle(315,415,50);
        floodfill(315,415,12);

        setcolor(0);
        settextstyle(1,0,4);
        outtextxy(130,35,'0');
        outtextxy(250,35,'1');
        outtextxy(370,35,'2');
        outtextxy(490,35,'3');
        outtextxy(190,155,'4');
        outtextxy(310,155,'5');
        outtextxy(430,155,'6');
        outtextxy(250,275,'7');
        outtextxy(370,275,'8');
        outtextxy(310,395,'9');

        writeln('Enter a Number between 0 and 9 : ');
        writeln('(Press 10 to End The Game) ');
        readln(number);
        settextstyle(1,0,3);

        case number of
            0:begin
                s := Age(s);
                ChooseNumber(s);
            end;
            1:begin
                s := NegativePoints(s);
                ChooseNumber(s);
            end;
            2:begin
                s := Joke(s);
                ChooseNumber(s);
            end;
            3:begin
                s := Color(s);
                ChooseNumber(s);
            end;    
            4:begin
                s := s + 4;
                cleardevice;
                setcolor(4);
                outtextxy(10,200,'  You Scored 4 Points');
                delay(2000);
                ChooseNumber(s);
            end; 
            5:begin
                s := s + 5;
                cleardevice;
                setcolor(14);
                outtextxy(10,200,'  You Scored 5 Points');
                delay(2000);
                ChooseNumber(s);
            end; 
            6:begin
                s := s + 6;
                cleardevice;
                setcolor(9);
                outtextxy(10,200,'  You Scored 6 Points');
                delay(2000);
                ChooseNumber(s);
            end; 
            7:begin
                s := s + 7;
                cleardevice;
                setcolor(2);
                outtextxy(10,200,'  You Scored 7 Points');
                delay(2000);
                ChooseNumber(s);
            end; 
            8:begin
                s := s + 8;
                cleardevice;
                setcolor(13);
                outtextxy(10,200,'  You Scored 8 Points');
                delay(2000);
                ChooseNumber(s);
            end; 
            9:begin
                s := s + 9;
                cleardevice;
                setcolor(12);
                outtextxy(10,200,'  You Scored 9 Points');
                delay(2000);
                ChooseNumber(s);
            end; 
            10:begin
                cleardevice;
                setcolor(13);
                settextstyle(1,0,3);
                outtextxy(10,200,'  Your Total Score : ');
                Str(s, strS);
                outtextxy(200,250, strS);
                writeln('Your Total Score : ', s);
                delay(2000);
            end;
        end;

    readln;
    end;

{------------------------Main------------------------}
var
    sum, gd, gm:integer;

begin
    sum := 0;
    gd := D8bit;
    gm :=  m640x480;

    InitGraph(gd, gm, '');
    if GraphResult <> grOk then
        Halt(1);
    
    setcolor(4);
    settextstyle(1,0,4);
    outtextxy(10,100,'Software Developer:');
    outtextxy(60,150,'Nazli Rahpiefard');
    delay(1000);

    ChooseNumber(sum);
   
end.
