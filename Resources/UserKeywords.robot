*** Settings ***
Library  ../TestCases/Data_Driven/ReadData.py


*** Keywords ***
Read Number of rows
   [Arguments]  ${Sheetname}
   ${maxr}=  fetch_number_of_rows  ${Sheetname}
   RETURN  ${maxr}


Read Excel Data of Cell 
   [Arguments]  ${Sheetname}  ${row}  ${cell}  
   ${celldata}=  fetch_cell_data  ${Sheetname}  ${row}  ${cell}
   RETURN  

