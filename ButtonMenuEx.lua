function pos(...) return term.setCursoPos(...) end
function cls(...) return term.clear(...) end
function tCol(...) return term.setTextColor(...) end
function bCol(...) return term.setBackgroundColor(...) end
function boc(...) return paintutils.drawFilledBox(...) end
function line(...) return paintutils.drawLine(...) end

x,y = term.getSize()
------------------------------------------------------------

function drawMenu()
  cls()
  pos(1,1)
  box(1,1,x,y,colors.lightBlue) -- Background
  box(12,6,40,13,colors.gray) -- Login Menu
  line(12,6,40,6,colors.lightGray) -- Top Bar
  line(38,6,40,6,colors.red) -- Exit
  line(23,8,38,8,colors.black) -- User Field
  line(23,10,38,10,colors.black) -- Pass Field
  line(14,12,20,12,colors.green) -- Login
  line(31,12,38,12,colors.green) -- Create

  tCol(colors.black)
  bCol(colors.red)
  pos(39,6)
  write("X") -- Exit Button

  tCol(colors.yellow)
  bCol(colors.gray)
  pos(14,8)
  write("USERNAME")
  pos(12,10)
  write("PASSWORD")

  tCol(colors.black)
  bCol(colors.green)
  pos(15,12)
  write("LOGIN")
  pos(32,12)
  write("CREATE")
  tCol(colors.white)
  bCol(colors.black)
end 
  ----------------------------------------------------------
function main()
  drawMenu()

  while true do
    local event, button, mx, my = os.pullEvent()
    if event == "mouse_click" then

      if mx >= 23 and mx <= 38 and my == 8 and button == 1 then  -- Username Button --
          pos(23,8)
          user = read()

      elseif mx >= 23 and mx <= 38 and my == 10 and button == 1 then  -- Password Button --
          pos(23,10)
          pass = read("pword")
      elseif mx >= 14 and mx <= 20 and my == 12 and button == 1 then  -- Login Button --
          login()
          break

      elseif mx >= 31 and mx <= 38 and  my == 12 and button == 1 then  -- Create Button --
          create()
          break

      elseif mx >= 38 and mx <= 40 and my == 6 and button == 1 then  -- X Button --
          os.reboot()
      end
    end
  end
end
      
