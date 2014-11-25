create table HW2_Student(Stu_Id varchar(10), stu_location geometry not null, primary key(stu_id));
create table HW2_Building(Bui_Id varchar(10),Bui_name varchar(50) not null ,Bui_vertices int not null, Bui_location geometry not null, primary key(Bui_id));
create table HW2_Tram(Tram_Id varchar(10), Tram_location geometry not null,Tram_radius int not null, primary key(Tram_id));

insert into HW2_Student values('p0', GeomFromText( ' POINT(228 102) ' ));
insert into HW2_Student values('p1', GeomFromText( ' POINT(220 112) ' ));
insert into HW2_Student values('p2', GeomFromText( ' POINT( 213 135) ' ));
insert into HW2_Student values('p3', GeomFromText( ' POINT( 189 177) ' ));
insert into HW2_Student values('p4', GeomFromText( ' POINT( 180 202) ' ));
insert into HW2_Student values('p5', GeomFromText( ' POINT( 166 231) ' ));
insert into HW2_Student values('p6', GeomFromText( ' POINT( 153 257) ' ));
insert into HW2_Student values('p7', GeomFromText( ' POINT( 138 278) ' ));
insert into HW2_Student values('p8', GeomFromText( ' POINT( 125 300) ' ));
insert into HW2_Student values('p9', GeomFromText( ' POINT( 116 320) ' ));
insert into HW2_Student values('p10', GeomFromText( ' POINT( 94 369) ' ));
insert into HW2_Student values('p11', GeomFromText( ' POINT( 104 394) ' ));
insert into HW2_Student values('p12', GeomFromText( ' POINT( 136 409) ' ));
insert into HW2_Student values('p13', GeomFromText( ' POINT( 171 430) ' ));
insert into HW2_Student values('p14', GeomFromText( ' POINT( 195 438) ' ));
insert into HW2_Student values('p15', GeomFromText( ' POINT( 221 453) ' ));
insert into HW2_Student values('p16', GeomFromText( ' POINT( 250 462) ' ));
insert into HW2_Student values('p17', GeomFromText( ' POINT( 283 485) ' ));
insert into HW2_Student values('p18', GeomFromText( ' POINT( 320 505) ' ));
insert into HW2_Student values('p19', GeomFromText( ' POINT( 342 502) ' ));
insert into HW2_Student values('p20', GeomFromText( ' POINT( 365 475) ' ));
insert into HW2_Student values('p21', GeomFromText( ' POINT( 320 531) ' ));
insert into HW2_Student values('p22', GeomFromText( ' POINT( 318 561) ' ));
insert into HW2_Student values('p23', GeomFromText( ' POINT( 439 318) ' ));
insert into HW2_Student values('p24', GeomFromText( ' POINT( 422 344) ' ));
insert into HW2_Student values('p25', GeomFromText( ' POINT( 412 378) ' ));
insert into HW2_Student values('p26', GeomFromText( ' POINT( 484 233) ' ));
insert into HW2_Student values('p27', GeomFromText( ' POINT( 504 208) ' ));
insert into HW2_Student values('p28', GeomFromText( ' POINT( 518 175) ' ));
insert into HW2_Student values('p29', GeomFromText( ' POINT( 516 290) ' ));
insert into HW2_Student values('p30', GeomFromText( ' POINT( 531 299) ' ));
insert into HW2_Student values('p31', GeomFromText( ' POINT( 588 328) ' ));
insert into HW2_Student values('p32', GeomFromText( ' POINT( 637 352) ' ));
insert into HW2_Student values('p33', GeomFromText( ' POINT( 657 363) ' ));
insert into HW2_Student values('p34', GeomFromText( ' POINT( 448 409) ' ));
insert into HW2_Student values('p35', GeomFromText( ' POINT( 464 420) ' ));
insert into HW2_Student values('p36', GeomFromText( ' POINT( 484 428) ' ));
insert into HW2_Student values('p37', GeomFromText( ' POINT( 491 432) ' ));
insert into HW2_Student values('p38', GeomFromText( ' POINT( 507 438) ' ));
insert into HW2_Student values('p39', GeomFromText( ' POINT( 548 462) ' ));
insert into HW2_Student values('p40', GeomFromText( ' POINT( 583 480) ' ));
insert into HW2_Student values('p41', GeomFromText( ' POINT( 302 197) ' ));
insert into HW2_Student values('p42', GeomFromText( ' POINT( 290 188) ' ));
insert into HW2_Student values('p43', GeomFromText( ' POINT( 297 202) ' ));
insert into HW2_Student values('p44', GeomFromText( ' POINT( 358 199) ' ));
insert into HW2_Student values('p45', GeomFromText( ' POINT( 384 214) ' ));
insert into HW2_Student values('p46', GeomFromText( ' POINT( 281 162) ' ));
insert into HW2_Student values('p47', GeomFromText( ' POINT( 264 314) ' ));
insert into HW2_Student values('p48', GeomFromText( ' POINT( 256 302) ' ));
insert into HW2_Student values('p49', GeomFromText( ' POINT( 221 285) ' ));
insert into HW2_Student values('p50', GeomFromText( ' POINT( 197 275) ' ));
insert into HW2_Student values('p51', GeomFromText( ' POINT( 179 338) ' ));
insert into HW2_Student values('p52', GeomFromText( ' POINT( 161 325) ' ));
insert into HW2_Student values('p53', GeomFromText( ' POINT( 378 280) ' ));
insert into HW2_Student values('p54', GeomFromText( ' POINT( 362 267) ' ));
insert into HW2_Student values('p55', GeomFromText( ' POINT( 530 364) ' ));
insert into HW2_Student values('p56', GeomFromText( ' POINT( 535 353) ' ));
insert into HW2_Student values('p57', GeomFromText( ' POINT( 589 448) ' ));
insert into HW2_Student values('p58', GeomFromText( ' POINT( 691 456) ' ));
insert into HW2_Student values('p59', GeomFromText( ' POINT( 698 427) ' ));
insert into HW2_Student values('p60', GeomFromText( ' POINT( 716 430) ' ));
insert into HW2_Student values('p61', GeomFromText( ' POINT( 723 446) ' ));
insert into HW2_Student values('p62', GeomFromText( ' POINT( 687 503) ' ));
insert into HW2_Student values('p63', GeomFromText( ' POINT( 674 525) ' ));
insert into HW2_Student values('p64', GeomFromText( ' POINT( 652 523) ' ));
insert into HW2_Student values('p65', GeomFromText( ' POINT( 645 539) ' ));
insert into HW2_Student values('p66', GeomFromText( ' POINT( 659 309) ' ));
insert into HW2_Student values('p67', GeomFromText( ' POINT( 716 340) ' ));
insert into HW2_Student values('p68', GeomFromText( ' POINT( 524 150) ' ));
insert into HW2_Student values('p69', GeomFromText( ' POINT( 476 258) ' ));
insert into HW2_Student values('p70', GeomFromText( ' POINT( 241 269) ' ));
insert into HW2_Student values('p71', GeomFromText( ' POINT( 284 409) ' ));
insert into HW2_Student values('p72', GeomFromText( ' POINT( 272 409) ' ));
insert into HW2_Student values('p73', GeomFromText( ' POINT( 204 367) ' ));
insert into HW2_Student values('p74', GeomFromText( ' POINT( 231 371) ' ));
insert into HW2_Student values('p75', GeomFromText( ' POINT( 381 424) ' ));
insert into HW2_Student values('p76', GeomFromText( ' POINT( 466 471) ' ));
insert into HW2_Student values('p77', GeomFromText( ' POINT( 338 96) ' ));
insert into HW2_Student values('p78', GeomFromText( ' POINT( 349 78) ' ));
insert into HW2_Student values('p79', GeomFromText( ' POINT( 409 132) ' ));
insert into HW2_Building values('b0','PSA',12, GeomFromText('POLYGON((79 68, 184 125, 179 133, 189 138, 139 229, 131 225, 127 233, 21 175, 26 168, 18 163, 67 73, 74 76,79 68))'));
insert into HW2_Building values('b1',' OHE', 4, GeomFromText('POLYGON((226 150, 254 164, 240 191, 212 176,226 150))'));
insert into HW2_Building values('b2',' BHE', 12, GeomFromText('POLYGON((337 209, 389 236, 385 242, 390 244, 385 253, 381 251, 378 255, 327 228, 330 223, 324 219, 328 212, 334 214,337 209))'));
insert into HW2_Building values('b3',' VHE', 12, GeomFromText('POLYGON((405 239, 440 257, 426 283, 421 280, 394 329, 401 332, 386 357, 351 339, 365 313, 369 315, 396 266, 391 263,405 239))'));
insert into HW2_Building values('b4',' HED & PCE', 14, GeomFromText('POLYGON((267 265, 291 278, 284 290, 290 294, 296 283, 354 314, 348 327, 340 322, 335 330, 290 305, 291 301, 281 295, 277 301, 258 289,267 265))'));
insert into HW2_Building values('b5',' small building 1', 4, GeomFromText('POLYGON((207 193, 219 199, 191 251, 179 245,207 193))'));
insert into HW2_Building values('b6',' small building 2', 4, GeomFromText('POLYGON((264 174, 273 179, 247 228, 237 222,264 174))'));
insert into HW2_Building values('b7',' small building 3', 4, GeomFromText('POLYGON((216 228, 241 241, 225 271, 199 257,216 228))'));
insert into HW2_Building values('b8',' NBA', 4, GeomFromText('POLYGON((182 284, 207 298, 202 306, 177 293,182 284))'));
insert into HW2_Building values('b9',' ABT', 4, GeomFromText('POLYGON((157 282, 169 288, 158 308, 147 301,157 282))'));
insert into HW2_Building values('b10',' SBA', 4, GeomFromText('POLYGON((172 304, 197 317, 191 327, 166 313,172 304))'));
insert into HW2_Building values('b11',' GER', 4, GeomFromText('POLYGON((65 226, 122 258, 77 341, 20 310,65 226))'));
insert into HW2_Building values('b12',' EEB', 4, GeomFromText('POLYGON((127 346, 184 375, 171 400, 115 370,127 346))'));
insert into HW2_Building values('b13',' SAL', 8, GeomFromText('POLYGON((216 370, 266 397, 255 417, 261 420, 247 445, 187 412, 201 388, 206 391,216 370))'));
insert into HW2_Building values('b14',' SSC', 12, GeomFromText('POLYGON((232 324, 241 329, 238 333, 245 338, 247 334, 293 358, 277 386, 233 360, 234 356, 228 352, 224 359, 217 354,232 324))'));
insert into HW2_Building values('b15',' SSL', 12, GeomFromText('POLYGON((309 371, 325 379, 333 365, 349 374, 342 388, 357 396, 346 416, 331 409, 324 422, 307 413, 313 399, 298 391,309 371))'));
insert into HW2_Building values('b16',' PHE', 6, GeomFromText('POLYGON((300 432, 338 452, 322 482, 296 469, 302 459, 289 452,300 432))'));
insert into HW2_Building values('b17',' LHI & SLH', 6, GeomFromText('POLYGON((446 339, 478 357, 460 390, 491 408, 488 417, 424 382,446 339))'));
insert into HW2_Building values('b18',' HLAG', 4, GeomFromText('POLYGON((420 426, 464 449, 435 503, 392 480,420 426))'));
insert into HW2_Building values('b19',' RRB & LIS & OCW & CEM & SCI', 16, GeomFromText('POLYGON((474 285, 529 315, 533 310, 695 397, 644 494, 601 471, 644 390, 627 380, 623 387, 633 393, 609 434, 586 422, 610 371, 524 325, 508 353, 454 323,474 285))'));
insert into HW2_Building values('b20',' SHS', 4, GeomFromText('POLYGON((565 357, 596 374, 582 399, 551 383,565 357))'));
insert into HW2_Building values('b21',' ACP', 4, GeomFromText('POLYGON((564 425, 585 436, 573 458, 552 447,564 425))'));
insert into HW2_Building values('b22',' HAR', 8, GeomFromText('POLYGON((498 459, 574 503, 537 569, 465 530, 458 541, 439 530, 445 517, 462 525,498 459))'));
insert into HW2_Building values('b23',' MPH', 6, GeomFromText('POLYGON((586 500, 629 523, 596 578, 569 563, 559 579, 549 574,586 500))'));
insert into HW2_Building values('b24',' ACC', 4, GeomFromText('POLYGON((748 427, 791 450, 768 494, 725 471,748 427))'));
insert into HW2_Building values('b25',' BRI', 8, GeomFromText('POLYGON((722 483, 735 490, 729 505, 757 518, 746 538, 719 525, 710 535, 698 528,722 483))'));
insert into HW2_Building values('b26',' SGM', 16, GeomFromText('POLYGON((297 13, 357 45, 334 87, 312 75, 291 114, 310 125, 295 151, 239 121, 253 95, 275 106, 280 98, 259 86, 270 62, 293 73, 297 66, 275 54,297 13))'));
insert into HW2_Building values('b27',' GFS', 4, GeomFromText('POLYGON((380 66, 493 126, 475 157, 363 97,380 66))'));
insert into HW2_Building values('b28',' BKS', 4, GeomFromText('POLYGON((607 199, 641 217, 617 257, 584 239,607 199))'));
insert into HW2_Building values('b29',' HSH', 4, GeomFromText('POLYGON((552 231, 565 238, 540 284, 527 278,552 231))'));
insert into HW2_Building values('b30',' YWC', 8, GeomFromText('POLYGON((514 215, 537 224, 530 237, 521 232, 513 248, 530 258, 527 264, 497 247,514 215))'));
insert into HW2_Building values('b31',' commons & STU', 12, GeomFromText('POLYGON((659 228, 700 249, 692 263, 708 272, 718 255, 766 280, 740 329, 646 278, 640 290, 619 278, 640 236, 652 241,659 228))'));
insert into HW2_Building values('b32',' TSC', 4, GeomFromText('POLYGON((677 320, 708 337, 690 368, 661 351,677 320))'));
insert into HW2_Building values('b33',' HNB', 16, GeomFromText('POLYGON((431 163, 440 160, 443 171, 472 186, 482 183, 485 195, 474 198, 458 227, 462 236, 452 239, 449 230, 421 214, 410 216, 408 207, 417 205, 434 175,431 163))'));
insert into HW2_Building values('b34',' PKS', 12, GeomFromText('POLYGON((94 402, 110 412, 105 420, 115 426, 118 422, 176 454, 165 472, 108 441, 110 435, 100 430, 74 480, 57 470,94 402))'));
insert into HW2_Building values('b35',' STO', 12, GeomFromText('POLYGON((574 247, 586 254, 577 270, 589 277, 599 259, 610 265, 587 309, 575 302, 581 290, 570 283, 562 296, 552 289,574 247))'));
insert into HW2_Tram values('t1psa', GeomFromText( ' POINT( 180 120) ' ), 100);
insert into HW2_Tram values('t2ohe', GeomFromText( ' POINT( 204 177) ' ), 70);
insert into HW2_Tram values('t3sgm', GeomFromText( ' POINT( 253 81) ' ), 75);
insert into HW2_Tram values('t4hnb', GeomFromText( ' POINT( 476 229) ' ), 50);
insert into HW2_Tram values('t5vhe', GeomFromText( ' POINT( 447 299) ' ), 50);
insert into HW2_Tram values('t6ssl', GeomFromText( ' POINT( 213 432) ' ), 50);
insert into HW2_Tram values('t7helen', GeomFromText( ' POINT( 378 460) ' ), 100);
