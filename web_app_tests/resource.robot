*** Settings ***
Documentation     Basic info for all tests
Library           SeleniumLibrary    implicit_wait=10    timeout=15


*** Variables ***
${BASE URL}       https://www.redfin.com
${BROWSER}        Chrome