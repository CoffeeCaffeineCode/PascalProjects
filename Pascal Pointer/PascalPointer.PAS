Program PascalProject;

uses
    crt, graph;

var
    i, x, y, r, Gd, Gm : integer;    
    p, c : pointer;
    size, f : word;

{--------------------------Intro--------------------------}

procedure Intro;

  begin    

{--------------------------Sound--------------------------}
    sound(300);
    delay(500);
    sound(500);
    delay(500);
    sound(400);
    delay(500);
    sound(200);
    delay(500);
    sound(300);
    delay(500);
    sound(400);
    delay(500);
    nosound;
{*********************************************************}
    setbkcolor(0);
    settextstyle(1,0,5);
    setcolor(15);
    outtextxy(100,100,'Directed By : ');
    outtextxy(150,200,'Nazli Rahpiefard');
    setcolor(15);
    setfillstyle(1,15);
    rectangle(30,1,70,479);
    rectangle(1,30,639,50);
    floodfill(2,35,15);
    delay(20);
    floodfill(200,35,15);
    delay(1000);
    cleardevice;
    setbkcolor(0);

  end;

{--------------------------Draw Tree--------------------------}

procedure DrawTree;

    begin

        setcolor(6);
        SetLineStyle(Solidln, 0, ThickWidth);

        for i:=110 to 120 do
            line(i,470,i,280);

        line(120,280,180,200);
        line(180,200,200,180);
        line(110,280,70,200);
        line(95,250,80,190);
        line(115,280,90,200);
        line(84,200,90,140);
        line(84,205,40,170);
        line(80,220,50,200);
        line(115,280,110,150);
        line(118,280,130,190);
        line(110,200,140,170);
        line(150,240,140,180);
        line(165,220,180,150);
        line(110,280,50,220);
        line(80,250,20,218);

    end;

{--------------------------Leaves--------------------------}

procedure Leaves;

   begin

        delay(1000);
        for i:=1 to 4 do
            begin
                setcolor(2);
                ellipse(153,240,0,360,i,2);
                ellipse(150,235,0,360,2,i);

                ellipse(190,200,0,360,i,2);
                ellipse(187,195,0,360,2,i);

                ellipse(90,250,0,360,i,2);

                ellipse(87,230,0,360,i,2);
                ellipse(84,225,0,360,2,i);

                ellipse(112,250,0,360,i,2);
                ellipse(109,245,0,360,2,i);

                ellipse(83,180,0,360,i,2);
                ellipse(80,175,0,360,2,i);

                ellipse(49,185,0,360,i,2);

                ellipse(40,235,0,360,i,2);
                ellipse(40,225,0,360,2,i);

                delay(500);
            end;

   end;

{--------------------------Blossom--------------------------}

procedure Blossom;

    begin

        delay(500);
        settextstyle(1,0,2);
        setcolor(9);
        outtextxy(153,230,'*');
        outtextxy(190,190,'*');
        outtextxy(90,240,'*');
        outtextxy(87,220,'*');
        outtextxy(112,240,'*');
        outtextxy(83,170,'*');
        outtextxy(42,165,'*');
        delay(500);
        outtextxy(65,210,'*');
        outtextxy(117,220,'*');
        outtextxy(124,235,'*');
        outtextxy(129,180,'*');
        outtextxy(145,210,'*');
        delay(500);
        outtextxy(168,165,'*');
        outtextxy(84,144,'*');
        outtextxy(50,235,'*');
        outtextxy(30,215,'*');

    end;

{--------------------------Sun--------------------------}

procedure Sun;

    begin

        r:=50;
        x:=350;
        y:=120;

        setcolor(14);
        setfillstyle(1,14);
        circle(x,y,r);
        floodfill(x,y,14);
        size:=imagesize(x-50,y-50,x+50,y+50);              
        getmem(p,size);
        getimage(x-50,y-50,x+50,y+50,p^);

        setcolor(0);
        setfillstyle(1,0);
        circle(x,y,r);
        floodfill(x,y,0);
        size:=imagesize(x-50,y-50,x+50,y+50);
        getmem(c,size);
        getimage(x-50,y-50,x+50,y+50,c^);
      
        x := x-r;
        for y := y-r downto 60 do
            begin
                putimage(x,y,p^,0);
                putimage(x,y,c^,0);
            end;
        
        putimage(x,60,p^,0);

    end;

{--------------------------Cloud--------------------------}

procedure Cloud;

    begin

        y:=60;

{--------------------------Sound--------------------------}

    for i:=1 to 2 do
        begin
            for f:=200 to 250 do
                begin
                    sound(f);
                    delay(15);
                end;
            nosound;
            delay(100)
        end;
    for f:=2 to 4 do
        begin
            sound(f);
            delay(15);
        end;
    nosound;
{*****************************************}
    for x:=200 to 350 do
        begin
            setcolor(8);
            setfillstyle(1,8);

            ellipse(x,60,0,360,120,80);
            floodfill(x,y,8);

            circle(x-120,y,120);
            floodfill(x-120,y-20,8);

        end;

    end;

{--------------------------Lightning--------------------------}

procedure Lightning;

begin

     setcolor(15);
     SetLineStyle(Solidln, 0, ThickWidth);
     line(320,50,200,120);
     line(202,122,290,100);
     line(292,102,175,165);
     delay(1000);


end;

{--------------------------Burnt Tree--------------------------}

procedure BurntTree;

  begin

      cleardevice;      
      setbkcolor(0);
      setcolor(8);
      SetLineStyle(Solidln, 0, ThickWidth);

      for i:=110 to 120 do
           line(i,470,i,280);

      line(120,280,180,200);
      line(110,280,70,200);
      line(95,250,80,200);
      line(115,280,90,200);
      line(84,200,90,180);
      line(84,205,40,170);
      line(115,280,110,150);
      line(118,280,130,190);
      line(150,240,140,180);
      line(165,220,180,150);
      line(110,280,50,220);

  end;

{--------------------------The End--------------------------}

procedure  TheEnd;

    begin

        delay(2000);
        cleardevice;
        setcolor(13);
        setfillstyle(1,13);

        rectangle(1,15,640,35);
        floodfill(3,20,13);

        rectangle(1,465,640,445);
        floodfill(3,460,13);

        rectangle(15,1,35,480);
        floodfill(16,5,13);
        floodfill(16,100,13);
        floodfill(16,474,13);

        rectangle(625,1,605,480);
        floodfill(620,3,13);
        floodfill(620,100,13);
        floodfill(620,474,13);

        settextstyle(1,0,10);
        setcolor(5);
        outtextxy(230,100,'T');
        sound(500);
        delay(500);
        setcolor(13);
        outtextxy(230,190,'H');
        sound(400);
        delay(500);
        setcolor(5);
        outtextxy(230,280,'E');
        sound(200);
        delay(500);
        setcolor(5);
        outtextxy(350,100,'E');
        sound(300);
        delay(500);
        setcolor(13);
        outtextxy(350,190,'N');
        sound(400);
        setcolor(5);
        outtextxy(350,280,'D');
        sound(400);
        delay(500);
        nosound;

    end;

{--------------------------Main--------------------------}

begin

{--------------------------Open Graph--------------------------}

     Gd := Detect;
     Gm := 0;
     InitGraph(Gd, Gm, '');
     if GraphResult <> grOk then
         Halt(1);

{--------------------------Procedure Calls--------------------------}

    Intro;
    DrawTree;
    Leaves;
    Blossom;
    Sun;
    Cloud;
    Lightning;
    BurntTree;
    TheEnd;

{--------------------------Close Graph--------------------------}
    readln;
    CloseGraph;

end.