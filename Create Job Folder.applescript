-- CREATE VARIABLE JOBNUMBER
--set jobNumber to ""
-- PROMPT USER FOR CLIENT/JOB NUMBER
display dialog "Please enter a client/job folder name using the format 123-1234-Some_Project" default answer ""
-- SAVE USER INPUT AS VARIABLE jobNumber TO BE USED LATER
set jobNumber to text returned of result

tell application "Finder"
	activate
	-- CREATE MAIN JOB FOLDER
	make new folder with properties {name:jobNumber}
	-- CREATE FIRST LEVEL FOLDERS
	make new folder at folder jobNumber with properties {name:"01_Admin"}
	make new folder at folder jobNumber with properties {name:"02_Client"}
	make new folder at folder jobNumber with properties {name:"03_Strategy"}
	make new folder at folder jobNumber with properties {name:"04_Copywriter"}
	make new folder at folder jobNumber with properties {name:"05_Design"}
	make new folder at folder jobNumber with properties {name:"06_Production"}
	make new folder at folder jobNumber with properties {name:"07_Proofs"}
	make new folder at folder jobNumber with properties {name:"Final"}
	--
	--
	-- SUB-FOLDERS
	--
	-- STRATEGY
	make new folder at folder "03_Strategy" of folder jobNumber with properties {name:"Brand_Strategy"}
	make new folder at folder "03_Strategy" of folder jobNumber with properties {name:"Info_Design"}
	-- DESIGN
	make new folder at folder "05_Design" of folder jobNumber with properties {name:"c1"}
	make new folder at folder "05_Design" of folder jobNumber with properties {name:"d1"}
	make new folder at folder "05_Design" of folder jobNumber with properties {name:"Links"}
	-- DESIGN/LINKS
	make new folder at folder "Links" of folder "05_Design" of folder jobNumber with properties {name:"_stock"}
	-- DESIGN/LINKS/_STOCK
	make new folder at folder "_stock" of folder "Links" of folder "05_Design" of folder jobNumber with properties {name:"_purchased"}
	make new folder at folder "_stock" of folder "Links" of folder "05_Design" of folder jobNumber with properties {name:"iStock"}
	make new folder at folder "_stock" of folder "Links" of folder "05_Design" of folder jobNumber with properties {name:"Veer"}
	-- PRODUCTION
	make new folder at folder "06_Production" of folder jobNumber with properties {name:"Digital"}
	make new folder at folder "06_Production" of folder jobNumber with properties {name:"Print"}
	--PRODUCTION/DIGITAL
	make new folder at folder "Digital" of folder "06_Production" of folder jobNumber with properties {name:"_BUILDS"}
	make new folder at folder "Digital" of folder "06_Production" of folder jobNumber with properties {name:"production_psd"}
	-- PRODUCTION/DIGITAL/_BUILDS
	make new folder at folder "_BUILDS" of folder "Digital" of folder "06_Production" of folder jobNumber with properties {name:"_BUILD_01"}
end tell
