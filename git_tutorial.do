  *******************************************************************************
*																			*
* PROJECT: Blah Blah														* 
*																			*
* PURPOSE: Teach Git to the Masses										    *
*																			*
* DATE: December 18th, 2015											     	*
*																			*
* AUTHOR:  Raahil Madhok 													*
*																				
********************************************************************************
********************************************************************************
*1. SET ENVIRONMENT
********************************************************************************
// Settings
clear all
pause on
cap log close
set more off
set maxvar 5000
set matsize 3300

//Set Directory
/*----------------------------------------
Sets path directory for each user's 
computer so program can run on any device.
Toggle local value when switching user
------------------------------------------*/
local RAAHIL 1


if `RAAHIL' {
	local ROOT /Users/rmadhok/Documents/FAFL-Git-Tutorial
	local DATA `ROOT'/data
	}
	
//open data
import delimited "`DATA'/turnstile_data_master_with_weather.csv", clear

//tab
tabstat entriesn_hourly, s(n mean) by(hour)
	

