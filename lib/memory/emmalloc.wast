(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32)))
  (import "env" "sbrk" (func $sbrk (type 1)))
  (import "env" "__assert_fail" (func $__assert_fail (type 2)))
  (import "env" "memset" (func $memset (type 5)))
  (import "env" "memcpy" (func $memcpy (type 5)))
  (func $__cxx_global_var_init (type 0)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 0
    i32.const -1
    i32.store offset=20
    get_local 0
    i32.const 0
    i32.store offset=8
    i32.const 0
    i32.const 0
    i32.store offset=1024
    get_local 0
    i32.const 0
    i32.store offset=16
    get_local 0
    get_local 0
    i32.const 16
    i32.add
    i32.store offset=24
    get_local 0
    get_local 0
    i32.const 8
    i32.add
    i32.store offset=28)
  (func $__cxx_global_var_init.1 (type 0)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 0
    i32.const -1
    i32.store offset=20
    get_local 0
    i32.const 0
    i32.store offset=8
    i32.const 0
    i32.const 0
    i32.store offset=1028
    get_local 0
    i32.const 0
    i32.store offset=16
    get_local 0
    get_local 0
    i32.const 16
    i32.add
    i32.store offset=24
    get_local 0
    get_local 0
    i32.const 8
    i32.add
    i32.store offset=28)
  (func $__cxx_global_var_init.2 (type 0)
    (local i32)
    get_global 0
    i32.const 768
    i32.sub
    tee_local 0
    set_global 0
    i32.const 0
    i64.const 0
    i64.store offset=1040
    get_local 0
    i32.const -1
    i32.store offset=260
    get_local 0
    i32.const 0
    i32.store offset=248
    get_local 0
    i32.const 0
    i32.store offset=752
    get_local 0
    i32.const 0
    i32.store offset=240
    get_local 0
    i32.const 0
    i32.store offset=736
    get_local 0
    i32.const 0
    i32.store offset=256
    get_local 0
    i32.const -1
    i32.store offset=756
    get_local 0
    i32.const -1
    i32.store offset=740
    i32.const 0
    i32.const 0
    i32.store offset=1048
    get_local 0
    i32.const 0
    i32.store offset=232
    get_local 0
    get_local 0
    i32.const 256
    i32.add
    i32.store offset=264
    get_local 0
    get_local 0
    i32.const 248
    i32.add
    i32.store offset=764
    get_local 0
    get_local 0
    i32.const 752
    i32.add
    i32.store offset=760
    get_local 0
    get_local 0
    i32.const 240
    i32.add
    i32.store offset=748
    get_local 0
    get_local 0
    i32.const 736
    i32.add
    i32.store offset=744
    get_local 0
    i32.const 0
    i32.store offset=720
    get_local 0
    get_local 0
    i32.const 232
    i32.add
    i32.store offset=732
    get_local 0
    get_local 0
    i32.const 720
    i32.add
    i32.store offset=728
    get_local 0
    i32.const -1
    i32.store offset=724
    i32.const 0
    i32.const 0
    i32.store offset=1052
    get_local 0
    get_local 0
    i32.load offset=720
    i32.store offset=224
    get_local 0
    i32.const 0
    i32.store offset=704
    get_local 0
    get_local 0
    i32.const 224
    i32.add
    i32.store offset=716
    get_local 0
    get_local 0
    i32.const 704
    i32.add
    i32.store offset=712
    get_local 0
    i32.const -1
    i32.store offset=708
    i32.const 0
    i32.const 0
    i32.store offset=1056
    get_local 0
    get_local 0
    i32.load offset=704
    i32.store offset=216
    get_local 0
    i32.const 0
    i32.store offset=688
    get_local 0
    get_local 0
    i32.const 216
    i32.add
    i32.store offset=700
    get_local 0
    get_local 0
    i32.const 688
    i32.add
    i32.store offset=696
    get_local 0
    i32.const -1
    i32.store offset=692
    i32.const 0
    i32.const 0
    i32.store offset=1060
    get_local 0
    get_local 0
    i32.load offset=688
    i32.store offset=208
    get_local 0
    i32.const 0
    i32.store offset=672
    get_local 0
    get_local 0
    i32.const 208
    i32.add
    i32.store offset=684
    get_local 0
    get_local 0
    i32.const 672
    i32.add
    i32.store offset=680
    get_local 0
    i32.const -1
    i32.store offset=676
    i32.const 0
    i32.const 0
    i32.store offset=1064
    get_local 0
    get_local 0
    i32.load offset=672
    i32.store offset=200
    get_local 0
    i32.const 0
    i32.store offset=656
    get_local 0
    get_local 0
    i32.const 200
    i32.add
    i32.store offset=668
    get_local 0
    get_local 0
    i32.const 656
    i32.add
    i32.store offset=664
    get_local 0
    i32.const -1
    i32.store offset=660
    i32.const 0
    i32.const 0
    i32.store offset=1068
    get_local 0
    get_local 0
    i32.load offset=656
    i32.store offset=192
    get_local 0
    i32.const 0
    i32.store offset=640
    get_local 0
    get_local 0
    i32.const 192
    i32.add
    i32.store offset=652
    get_local 0
    get_local 0
    i32.const 640
    i32.add
    i32.store offset=648
    get_local 0
    i32.const -1
    i32.store offset=644
    i32.const 0
    i32.const 0
    i32.store offset=1072
    get_local 0
    get_local 0
    i32.load offset=640
    i32.store offset=184
    get_local 0
    i32.const 0
    i32.store offset=624
    get_local 0
    get_local 0
    i32.const 184
    i32.add
    i32.store offset=636
    get_local 0
    get_local 0
    i32.const 624
    i32.add
    i32.store offset=632
    get_local 0
    i32.const -1
    i32.store offset=628
    i32.const 0
    i32.const 0
    i32.store offset=1076
    get_local 0
    get_local 0
    i32.load offset=624
    i32.store offset=176
    get_local 0
    i32.const 0
    i32.store offset=608
    get_local 0
    get_local 0
    i32.const 176
    i32.add
    i32.store offset=620
    get_local 0
    get_local 0
    i32.const 608
    i32.add
    i32.store offset=616
    get_local 0
    i32.const -1
    i32.store offset=612
    i32.const 0
    i32.const 0
    i32.store offset=1080
    get_local 0
    get_local 0
    i32.load offset=608
    i32.store offset=168
    get_local 0
    i32.const 0
    i32.store offset=592
    get_local 0
    get_local 0
    i32.const 168
    i32.add
    i32.store offset=604
    get_local 0
    get_local 0
    i32.const 592
    i32.add
    i32.store offset=600
    get_local 0
    i32.const -1
    i32.store offset=596
    i32.const 0
    i32.const 0
    i32.store offset=1084
    get_local 0
    get_local 0
    i32.load offset=592
    i32.store offset=160
    get_local 0
    i32.const 0
    i32.store offset=576
    get_local 0
    get_local 0
    i32.const 160
    i32.add
    i32.store offset=588
    get_local 0
    get_local 0
    i32.const 576
    i32.add
    i32.store offset=584
    get_local 0
    i32.const -1
    i32.store offset=580
    i32.const 0
    i32.const 0
    i32.store offset=1088
    get_local 0
    get_local 0
    i32.load offset=576
    i32.store offset=152
    get_local 0
    i32.const 0
    i32.store offset=560
    get_local 0
    get_local 0
    i32.const 152
    i32.add
    i32.store offset=572
    get_local 0
    get_local 0
    i32.const 560
    i32.add
    i32.store offset=568
    get_local 0
    i32.const -1
    i32.store offset=564
    i32.const 0
    i32.const 0
    i32.store offset=1092
    get_local 0
    get_local 0
    i32.load offset=560
    i32.store offset=144
    get_local 0
    i32.const 0
    i32.store offset=544
    get_local 0
    get_local 0
    i32.const 144
    i32.add
    i32.store offset=556
    get_local 0
    get_local 0
    i32.const 544
    i32.add
    i32.store offset=552
    get_local 0
    i32.const -1
    i32.store offset=548
    i32.const 0
    i32.const 0
    i32.store offset=1096
    get_local 0
    get_local 0
    i32.load offset=544
    i32.store offset=136
    get_local 0
    i32.const 0
    i32.store offset=528
    get_local 0
    get_local 0
    i32.const 136
    i32.add
    i32.store offset=540
    get_local 0
    get_local 0
    i32.const 528
    i32.add
    i32.store offset=536
    get_local 0
    i32.const -1
    i32.store offset=532
    i32.const 0
    i32.const 0
    i32.store offset=1100
    get_local 0
    get_local 0
    i32.load offset=528
    i32.store offset=128
    get_local 0
    i32.const 0
    i32.store offset=512
    get_local 0
    get_local 0
    i32.const 128
    i32.add
    i32.store offset=524
    get_local 0
    get_local 0
    i32.const 512
    i32.add
    i32.store offset=520
    get_local 0
    i32.const -1
    i32.store offset=516
    i32.const 0
    i32.const 0
    i32.store offset=1104
    get_local 0
    get_local 0
    i32.load offset=512
    i32.store offset=120
    get_local 0
    i32.const 0
    i32.store offset=496
    get_local 0
    get_local 0
    i32.const 120
    i32.add
    i32.store offset=508
    get_local 0
    get_local 0
    i32.const 496
    i32.add
    i32.store offset=504
    get_local 0
    i32.const -1
    i32.store offset=500
    i32.const 0
    i32.const 0
    i32.store offset=1108
    get_local 0
    get_local 0
    i32.load offset=496
    i32.store offset=112
    get_local 0
    i32.const 0
    i32.store offset=480
    get_local 0
    get_local 0
    i32.const 112
    i32.add
    i32.store offset=492
    get_local 0
    get_local 0
    i32.const 480
    i32.add
    i32.store offset=488
    get_local 0
    i32.const -1
    i32.store offset=484
    i32.const 0
    i32.const 0
    i32.store offset=1112
    get_local 0
    get_local 0
    i32.load offset=480
    i32.store offset=104
    get_local 0
    i32.const 0
    i32.store offset=464
    get_local 0
    get_local 0
    i32.const 104
    i32.add
    i32.store offset=476
    get_local 0
    get_local 0
    i32.const 464
    i32.add
    i32.store offset=472
    get_local 0
    i32.const -1
    i32.store offset=468
    i32.const 0
    i32.const 0
    i32.store offset=1116
    get_local 0
    get_local 0
    i32.load offset=464
    i32.store offset=96
    get_local 0
    i32.const 0
    i32.store offset=448
    get_local 0
    get_local 0
    i32.const 96
    i32.add
    i32.store offset=460
    get_local 0
    get_local 0
    i32.const 448
    i32.add
    i32.store offset=456
    get_local 0
    i32.const -1
    i32.store offset=452
    i32.const 0
    i32.const 0
    i32.store offset=1120
    get_local 0
    get_local 0
    i32.load offset=448
    i32.store offset=88
    get_local 0
    i32.const 0
    i32.store offset=432
    get_local 0
    get_local 0
    i32.const 88
    i32.add
    i32.store offset=444
    get_local 0
    get_local 0
    i32.const 432
    i32.add
    i32.store offset=440
    get_local 0
    i32.const -1
    i32.store offset=436
    i32.const 0
    i32.const 0
    i32.store offset=1124
    get_local 0
    get_local 0
    i32.load offset=432
    i32.store offset=80
    get_local 0
    i32.const 0
    i32.store offset=416
    get_local 0
    get_local 0
    i32.const 80
    i32.add
    i32.store offset=428
    get_local 0
    get_local 0
    i32.const 416
    i32.add
    i32.store offset=424
    get_local 0
    i32.const -1
    i32.store offset=420
    i32.const 0
    i32.const 0
    i32.store offset=1128
    get_local 0
    get_local 0
    i32.load offset=416
    i32.store offset=72
    get_local 0
    i32.const 0
    i32.store offset=400
    get_local 0
    get_local 0
    i32.const 72
    i32.add
    i32.store offset=412
    get_local 0
    get_local 0
    i32.const 400
    i32.add
    i32.store offset=408
    get_local 0
    i32.const -1
    i32.store offset=404
    i32.const 0
    i32.const 0
    i32.store offset=1132
    get_local 0
    get_local 0
    i32.load offset=400
    i32.store offset=64
    get_local 0
    i32.const 0
    i32.store offset=384
    get_local 0
    get_local 0
    i32.const 64
    i32.add
    i32.store offset=396
    get_local 0
    get_local 0
    i32.const 384
    i32.add
    i32.store offset=392
    get_local 0
    i32.const -1
    i32.store offset=388
    i32.const 0
    i32.const 0
    i32.store offset=1136
    get_local 0
    get_local 0
    i32.load offset=384
    i32.store offset=56
    get_local 0
    i32.const 0
    i32.store offset=368
    get_local 0
    get_local 0
    i32.const 56
    i32.add
    i32.store offset=380
    get_local 0
    get_local 0
    i32.const 368
    i32.add
    i32.store offset=376
    get_local 0
    i32.const -1
    i32.store offset=372
    i32.const 0
    i32.const 0
    i32.store offset=1140
    get_local 0
    get_local 0
    i32.load offset=368
    i32.store offset=48
    get_local 0
    i32.const 0
    i32.store offset=352
    get_local 0
    get_local 0
    i32.const 48
    i32.add
    i32.store offset=364
    get_local 0
    get_local 0
    i32.const 352
    i32.add
    i32.store offset=360
    get_local 0
    i32.const -1
    i32.store offset=356
    i32.const 0
    i32.const 0
    i32.store offset=1144
    get_local 0
    get_local 0
    i32.load offset=352
    i32.store offset=40
    get_local 0
    i32.const 0
    i32.store offset=336
    get_local 0
    get_local 0
    i32.const 40
    i32.add
    i32.store offset=348
    get_local 0
    get_local 0
    i32.const 336
    i32.add
    i32.store offset=344
    get_local 0
    i32.const -1
    i32.store offset=340
    i32.const 0
    i32.const 0
    i32.store offset=1148
    get_local 0
    get_local 0
    i32.load offset=336
    i32.store offset=32
    get_local 0
    i32.const 0
    i32.store offset=320
    get_local 0
    get_local 0
    i32.const 32
    i32.add
    i32.store offset=332
    get_local 0
    get_local 0
    i32.const 320
    i32.add
    i32.store offset=328
    get_local 0
    i32.const -1
    i32.store offset=324
    i32.const 0
    i32.const 0
    i32.store offset=1152
    get_local 0
    get_local 0
    i32.load offset=320
    i32.store offset=24
    get_local 0
    i32.const 0
    i32.store offset=304
    get_local 0
    get_local 0
    i32.const 24
    i32.add
    i32.store offset=316
    get_local 0
    get_local 0
    i32.const 304
    i32.add
    i32.store offset=312
    get_local 0
    i32.const -1
    i32.store offset=308
    i32.const 0
    i32.const 0
    i32.store offset=1156
    get_local 0
    get_local 0
    i32.load offset=304
    i32.store offset=16
    get_local 0
    i32.const 0
    i32.store offset=288
    get_local 0
    get_local 0
    i32.const 16
    i32.add
    i32.store offset=300
    get_local 0
    get_local 0
    i32.const 288
    i32.add
    i32.store offset=296
    get_local 0
    i32.const -1
    i32.store offset=292
    i32.const 0
    i32.const 0
    i32.store offset=1160
    get_local 0
    get_local 0
    i32.load offset=288
    i32.store offset=8
    get_local 0
    i32.const 0
    i32.store offset=272
    get_local 0
    get_local 0
    i32.const 8
    i32.add
    i32.store offset=284
    get_local 0
    get_local 0
    i32.const 272
    i32.add
    i32.store offset=280
    get_local 0
    i32.const -1
    i32.store offset=276
    get_local 0
    get_local 0
    i32.load offset=272
    i32.store
    i32.const 0
    i32.const 0
    i32.store offset=1164
    get_local 0
    get_local 0
    i32.store offset=268
    get_local 0
    i32.const 768
    i32.add
    set_global 0)
  (func (;7;) (type 0)
    (local i32)
    get_global 0
    i32.const 80
    i32.sub
    tee_local 0
    i32.const 0
    i32.store offset=28
    block  ;; label = @1
      loop  ;; label = @2
        get_local 0
        i32.load offset=28
        i32.const 32
        i32.ge_u
        br_if 1 (;@1;)
        get_local 0
        get_local 0
        i32.const 32
        i32.add
        i32.store offset=40
        get_local 0
        i32.const -1
        i32.store offset=36
        get_local 0
        i32.load offset=40
        i32.const 0
        i32.store
        get_local 0
        get_local 0
        i32.load offset=32
        i32.store offset=24
        get_local 0
        get_local 0
        i32.const 24
        i32.add
        i32.store offset=76
        i32.const 1040
        get_local 0
        i32.load offset=28
        i32.const 2
        i32.shl
        i32.add
        i32.const 0
        i32.store
        get_local 0
        get_local 0
        i32.load offset=28
        i32.const 1
        i32.add
        i32.store offset=28
        br 0 (;@2;)
      end
    end
    get_local 0
    get_local 0
    i32.const 64
    i32.add
    i32.store offset=72
    get_local 0
    i32.const -1
    i32.store offset=68
    get_local 0
    i32.load offset=72
    i32.const 0
    i32.store
    get_local 0
    get_local 0
    i32.load offset=64
    i32.store offset=16
    get_local 0
    get_local 0
    i32.const 16
    i32.add
    i32.store offset=60
    i32.const 0
    i32.const 0
    i32.store offset=1024
    get_local 0
    get_local 0
    i32.const 48
    i32.add
    i32.store offset=56
    get_local 0
    i32.const -1
    i32.store offset=52
    get_local 0
    i32.load offset=56
    i32.const 0
    i32.store
    get_local 0
    get_local 0
    i32.load offset=48
    i32.store offset=8
    get_local 0
    get_local 0
    i32.const 8
    i32.add
    i32.store offset=44
    i32.const 0
    i32.const 0
    i32.store offset=1028)
  (func (;8;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    get_local 1
    i32.load offset=12
    call $_ZL15emmalloc_mallocj
    i32.store offset=8
    get_local 1
    i32.load offset=8
    set_local 0
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func $_ZL15emmalloc_mallocj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=24
        br_if 0 (;@2;)
        get_local 1
        get_local 1
        i32.const 32
        i32.add
        i32.store offset=40
        get_local 1
        i32.const -1
        i32.store offset=36
        get_local 1
        i32.load offset=40
        i32.const 0
        i32.store
        get_local 1
        get_local 1
        i32.load offset=32
        i32.store offset=16
        get_local 1
        get_local 1
        i32.const 16
        i32.add
        i32.store offset=44
        get_local 1
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 1
      get_local 1
      i32.load offset=24
      call $_ZL15tryFromFreeListj
      i32.store offset=12
      block  ;; label = @2
        get_local 1
        i32.load offset=12
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        get_local 1
        get_local 1
        i32.load offset=24
        call $_ZL13newAllocationj
        i32.store offset=12
        block  ;; label = @3
          get_local 1
          i32.load offset=12
          i32.const 0
          i32.ne
          br_if 0 (;@3;)
          get_local 1
          get_local 1
          i32.const 48
          i32.add
          i32.store offset=56
          get_local 1
          i32.const -1
          i32.store offset=52
          get_local 1
          i32.load offset=56
          i32.const 0
          i32.store
          get_local 1
          get_local 1
          i32.load offset=48
          i32.store offset=8
          get_local 1
          get_local 1
          i32.const 8
          i32.add
          i32.store offset=60
          get_local 1
          i32.const 0
          i32.store offset=28
          br 2 (;@1;)
        end
      end
      block  ;; label = @2
        get_local 1
        i32.load offset=12
        call $_ZL8getAfterP6Region
        i32.const 0
        call $sbrk
        i32.le_u
        br_if 0 (;@2;)
        i32.const 1169
        i32.const 1197
        i32.const 823
        i32.const 1210
        call $__assert_fail
        unreachable
      end
      get_local 1
      get_local 1
      i32.load offset=12
      call $_ZL10getPayloadP6Region
      i32.store offset=28
    end
    get_local 1
    i32.load offset=28
    set_local 0
    get_local 1
    i32.const 64
    i32.add
    set_global 0
    get_local 0)
  (func $_ZL15tryFromFreeListj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=24
    get_local 1
    get_local 1
    i32.load offset=24
    call $_ZL25getBigEnoughFreeListIndexj
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=20
        i32.const 3
        i32.le_u
        br_if 0 (;@2;)
        get_local 1
        i32.load offset=24
        get_local 1
        i32.load offset=20
        call $_ZL26getMinSizeForFreeListIndexj
        i32.ge_u
        br_if 0 (;@2;)
        get_local 1
        i32.const 1040
        get_local 1
        i32.load offset=20
        i32.const 1
        i32.sub
        i32.const 2
        i32.shl
        i32.add
        i32.load
        i32.store offset=16
        get_local 1
        i32.const 0
        i32.store offset=12
        loop  ;; label = @3
          i32.const 0
          set_local 0
          block  ;; label = @4
            get_local 1
            i32.load offset=16
            i32.const 0
            i32.eq
            br_if 0 (;@4;)
            get_local 1
            i32.load offset=12
            i32.const 32
            i32.lt_u
            set_local 0
          end
          block  ;; label = @4
            get_local 0
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            get_local 1
            get_local 1
            i32.load offset=16
            call $_ZL12fromFreeInfoP8FreeInfo
            i32.store offset=8
            block  ;; label = @5
              get_local 1
              i32.load offset=8
              call $_ZL13getMaxPayloadP6Region
              get_local 1
              i32.load offset=24
              i32.lt_u
              br_if 0 (;@5;)
              get_local 1
              get_local 1
              i32.load offset=16
              get_local 1
              i32.load offset=24
              call $_ZL11useFreeInfoP8FreeInfoj
              i32.store offset=28
              br 4 (;@1;)
            end
            get_local 1
            get_local 1
            i32.load offset=16
            call 45
            i32.load
            i32.store offset=16
            get_local 1
            get_local 1
            i32.load offset=12
            i32.const 1
            i32.add
            i32.store offset=12
            br 1 (;@3;)
          end
        end
      end
      block  ;; label = @2
        loop  ;; label = @3
          get_local 1
          i32.load offset=20
          i32.const 32
          i32.ge_u
          br_if 1 (;@2;)
          get_local 1
          i32.const 1040
          get_local 1
          i32.load offset=20
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.store offset=4
          block  ;; label = @4
            get_local 1
            i32.load offset=4
            i32.const 0
            i32.eq
            br_if 0 (;@4;)
            get_local 1
            get_local 1
            i32.load offset=4
            get_local 1
            i32.load offset=24
            call $_ZL11useFreeInfoP8FreeInfoj
            i32.store offset=28
            br 3 (;@1;)
          end
          get_local 1
          get_local 1
          i32.load offset=20
          i32.const 1
          i32.add
          i32.store offset=20
          br 0 (;@3;)
        end
      end
      get_local 1
      get_local 1
      i32.const 32
      i32.add
      i32.store offset=40
      get_local 1
      i32.const -1
      i32.store offset=36
      get_local 1
      i32.load offset=40
      i32.const 0
      i32.store
      get_local 1
      get_local 1
      i32.load offset=32
      i32.store
      get_local 1
      get_local 1
      i32.store offset=44
      get_local 1
      i32.const 0
      i32.store offset=28
    end
    get_local 1
    i32.load offset=28
    set_local 0
    get_local 1
    i32.const 48
    i32.add
    set_global 0
    get_local 0)
  (func $_ZL13newAllocationj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=8
    block  ;; label = @1
      get_local 1
      i32.load offset=8
      i32.const 0
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 1226
      i32.const 1197
      i32.const 782
      i32.const 1556
      call $__assert_fail
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1028
        i32.const 0
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          i32.const 0
          i32.load offset=1028
          call 22
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1028
          i32.const 1
          call 24
          i32.const 0
          i32.load offset=1028
          call $_ZL18removeFromFreeListP6Region
          block  ;; label = @4
            get_local 1
            i32.load offset=8
            call $_ZL16extendLastRegionj
            i32.eqz
            br_if 0 (;@4;)
            get_local 1
            i32.const 0
            i32.load offset=1028
            i32.store offset=12
            br 3 (;@1;)
          end
          i32.const 0
          i32.load offset=1028
          i32.const 0
          call 24
          get_local 1
          get_local 1
          i32.const 16
          i32.add
          i32.store offset=24
          get_local 1
          i32.const -1
          i32.store offset=20
          get_local 1
          i32.load offset=24
          i32.const 0
          i32.store
          get_local 1
          get_local 1
          i32.load offset=16
          i32.store
          get_local 1
          get_local 1
          i32.store offset=28
          get_local 1
          i32.const 0
          i32.store offset=12
          br 2 (;@1;)
        end
      end
      get_local 1
      get_local 1
      i32.load offset=8
      call $_ZL14allocateRegionj
      i32.store offset=12
    end
    get_local 1
    i32.load offset=12
    set_local 0
    get_local 1
    i32.const 32
    i32.add
    set_global 0
    get_local 0)
  (func $_ZL8getAfterP6Region (type 1) (param i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    set_local 0
    get_local 1
    i32.load offset=12
    call 28
    set_local 2
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0
    get_local 2
    i32.add)
  (func $_ZL10getPayloadP6Region (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    block  ;; label = @1
      get_local 1
      i32.load offset=12
      call 47
      get_local 1
      i32.load offset=12
      i32.sub
      i32.const 8
      i32.eq
      br_if 0 (;@1;)
      i32.const 1663
      i32.const 1197
      i32.const 205
      i32.const 1727
      call $__assert_fail
      unreachable
    end
    block  ;; label = @1
      get_local 1
      i32.load offset=12
      call 22
      br_if 0 (;@1;)
      i32.const 1738
      i32.const 1197
      i32.const 206
      i32.const 1727
      call $__assert_fail
      unreachable
    end
    get_local 1
    i32.load offset=12
    call 48
    set_local 0
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func (;14;) (type 3) (param i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    call $_ZL13emmalloc_freePv
    get_local 1
    i32.const 16
    i32.add
    set_global 0)
  (func $_ZL13emmalloc_freePv (type 3) (param i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    set_local 0
    get_local 1
    get_local 1
    i32.const 16
    i32.add
    i32.store offset=24
    get_local 1
    i32.const -1
    i32.store offset=20
    get_local 1
    i32.load offset=24
    i32.const 0
    i32.store
    get_local 1
    get_local 1
    i32.load offset=16
    i32.store offset=8
    get_local 1
    get_local 1
    i32.const 8
    i32.add
    i32.store offset=28
    block  ;; label = @1
      block  ;; label = @2
        get_local 0
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      get_local 1
      i32.load offset=12
      call $_ZL11fromPayloadPv
      call $_ZL9stopUsingP6Region
    end
    get_local 1
    i32.const 32
    i32.add
    set_global 0)
  (func $_ZL11fromPayloadPv (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.const -8
    i32.add)
  (func $_ZL9stopUsingP6Region (type 3) (param i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.const 0
    call 24
    block  ;; label = @1
      get_local 1
      i32.load offset=12
      call $_ZL27mergeIntoExistingFreeRegionP6Region
      br_if 0 (;@1;)
      get_local 1
      i32.load offset=12
      call $_ZL13addToFreeListP6Region
    end
    get_local 1
    i32.const 16
    i32.add
    set_global 0)
  (func (;18;) (type 4) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=12
    get_local 2
    get_local 1
    i32.store offset=8
    get_local 2
    get_local 2
    i32.load offset=12
    get_local 2
    i32.load offset=8
    call $_ZL15emmalloc_callocjj
    i32.store offset=4
    get_local 2
    i32.load offset=4
    set_local 1
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 1)
  (func $_ZL15emmalloc_callocjj (type 4) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=24
    get_local 2
    get_local 1
    i32.store offset=20
    get_local 2
    get_local 2
    i32.load offset=24
    get_local 2
    i32.load offset=20
    i32.mul
    call $_ZL15emmalloc_mallocj
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.load offset=16
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        get_local 2
        get_local 2
        i32.const 32
        i32.add
        i32.store offset=40
        get_local 2
        i32.const -1
        i32.store offset=36
        get_local 2
        i32.load offset=40
        i32.const 0
        i32.store
        get_local 2
        get_local 2
        i32.load offset=32
        i32.store offset=8
        get_local 2
        get_local 2
        i32.const 8
        i32.add
        i32.store offset=44
        get_local 2
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 2
      i32.load offset=16
      i32.const 0
      get_local 2
      i32.load offset=24
      get_local 2
      i32.load offset=20
      i32.mul
      call $memset
      drop
      get_local 2
      get_local 2
      i32.load offset=16
      i32.store offset=28
    end
    get_local 2
    i32.load offset=28
    set_local 1
    get_local 2
    i32.const 48
    i32.add
    set_global 0
    get_local 1)
  (func (;20;) (type 4) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=12
    get_local 2
    get_local 1
    i32.store offset=8
    get_local 2
    get_local 2
    i32.load offset=12
    get_local 2
    i32.load offset=8
    call $_ZL16emmalloc_reallocPvj
    i32.store offset=4
    get_local 2
    i32.load offset=4
    set_local 1
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 1)
  (func $_ZL16emmalloc_reallocPvj (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=24
    get_local 2
    get_local 1
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.load offset=24
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        get_local 2
        get_local 2
        i32.load offset=20
        call $_ZL15emmalloc_mallocj
        i32.store offset=28
        br 1 (;@1;)
      end
      block  ;; label = @2
        get_local 2
        i32.load offset=20
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=24
        call $_ZL13emmalloc_freePv
        get_local 2
        get_local 2
        i32.const 32
        i32.add
        i32.store offset=40
        get_local 2
        i32.const -1
        i32.store offset=36
        get_local 2
        i32.load offset=40
        i32.const 0
        i32.store
        get_local 2
        get_local 2
        i32.load offset=32
        i32.store offset=16
        get_local 2
        get_local 2
        i32.const 16
        i32.add
        i32.store offset=44
        get_local 2
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 2
      get_local 2
      i32.load offset=24
      call $_ZL11fromPayloadPv
      i32.store offset=12
      block  ;; label = @2
        get_local 2
        i32.load offset=12
        call 22
        br_if 0 (;@2;)
        i32.const 1738
        i32.const 1197
        i32.const 848
        i32.const 1756
        call $__assert_fail
        unreachable
      end
      block  ;; label = @2
        get_local 2
        i32.load offset=20
        get_local 2
        i32.load offset=12
        call $_ZL13getMaxPayloadP6Region
        i32.gt_u
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=12
        i32.const 1
        call 24
        get_local 2
        i32.load offset=12
        get_local 2
        i32.load offset=20
        call $_ZL22possiblySplitRemainderP6Regionj
        get_local 2
        get_local 2
        i32.load offset=24
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 2
      get_local 2
      i32.load offset=12
      call 26
      i32.store offset=8
      block  ;; label = @2
        get_local 2
        i32.load offset=8
        i32.const 0
        i32.eq
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=8
        call 22
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=8
        call $_ZL18removeFromFreeListP6Region
        get_local 2
        i32.load offset=12
        get_local 2
        i32.load offset=8
        call 28
        call 29
        block  ;; label = @3
          block  ;; label = @4
            get_local 2
            i32.load offset=8
            i32.const 0
            i32.load offset=1028
            i32.eq
            br_if 0 (;@4;)
            get_local 2
            i32.load offset=12
            set_local 1
            get_local 2
            i32.load offset=8
            call 26
            call 30
            get_local 1
            i32.store
            br 1 (;@3;)
          end
          i32.const 0
          get_local 2
          i32.load offset=12
          i32.store offset=1028
        end
      end
      block  ;; label = @2
        get_local 2
        i32.load offset=20
        get_local 2
        i32.load offset=12
        call $_ZL13getMaxPayloadP6Region
        i32.gt_u
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=12
        i32.const 1
        call 24
        get_local 2
        i32.load offset=12
        get_local 2
        i32.load offset=20
        call $_ZL22possiblySplitRemainderP6Regionj
        get_local 2
        get_local 2
        i32.load offset=24
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 2
      get_local 2
      i32.load offset=20
      call $_ZL15tryFromFreeListj
      i32.store offset=4
      block  ;; label = @2
        get_local 2
        i32.load offset=4
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=12
        i32.const 0
        i32.load offset=1028
        i32.ne
        br_if 0 (;@2;)
        block  ;; label = @3
          get_local 2
          i32.load offset=20
          call $_ZL16extendLastRegionj
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            get_local 2
            i32.load offset=4
            i32.const 0
            i32.eq
            br_if 0 (;@4;)
            get_local 2
            i32.load offset=4
            call $_ZL9stopUsingP6Region
          end
          get_local 2
          get_local 2
          i32.load offset=24
          i32.store offset=28
          br 2 (;@1;)
        end
      end
      block  ;; label = @2
        get_local 2
        i32.load offset=4
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        get_local 2
        get_local 2
        i32.load offset=20
        call $_ZL13newAllocationj
        i32.store offset=4
        block  ;; label = @3
          get_local 2
          i32.load offset=4
          i32.const 0
          i32.ne
          br_if 0 (;@3;)
          get_local 2
          get_local 2
          i32.const 48
          i32.add
          i32.store offset=56
          get_local 2
          i32.const -1
          i32.store offset=52
          get_local 2
          i32.load offset=56
          i32.const 0
          i32.store
          get_local 2
          get_local 2
          i32.load offset=48
          i32.store
          get_local 2
          get_local 2
          i32.store offset=60
          get_local 2
          i32.const 0
          i32.store offset=28
          br 2 (;@1;)
        end
      end
      get_local 2
      i32.load offset=4
      call $_ZL10getPayloadP6Region
      set_local 1
      get_local 2
      i32.load offset=12
      call $_ZL10getPayloadP6Region
      set_local 0
      block  ;; label = @2
        block  ;; label = @3
          get_local 2
          i32.load offset=20
          get_local 2
          i32.load offset=12
          call $_ZL13getMaxPayloadP6Region
          i32.ge_u
          br_if 0 (;@3;)
          get_local 2
          i32.load offset=20
          set_local 3
          br 1 (;@2;)
        end
        get_local 2
        i32.load offset=12
        call $_ZL13getMaxPayloadP6Region
        set_local 3
      end
      get_local 1
      get_local 0
      get_local 3
      call $memcpy
      drop
      get_local 2
      i32.load offset=12
      call $_ZL9stopUsingP6Region
      get_local 2
      get_local 2
      i32.load offset=4
      call $_ZL10getPayloadP6Region
      i32.store offset=28
    end
    get_local 2
    i32.load offset=28
    set_local 1
    get_local 2
    i32.const 64
    i32.add
    set_global 0
    get_local 1)
  (func (;22;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.load
    i32.const 1
    i32.and)
  (func $_ZL13getMaxPayloadP6Region (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    call 28
    set_local 0
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0
    i32.const 8
    i32.sub)
  (func (;24;) (type 6) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    get_local 0
    i32.store offset=12
    get_local 2
    get_local 1
    i32.store offset=8
    get_local 2
    i32.load offset=12
    tee_local 1
    get_local 1
    i32.load
    i32.const -2
    i32.and
    get_local 2
    i32.load offset=8
    i32.const 1
    i32.and
    i32.or
    i32.store)
  (func $_ZL22possiblySplitRemainderP6Regionj (type 6) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=28
    get_local 2
    get_local 1
    i32.store offset=24
    get_local 2
    get_local 2
    i32.load offset=28
    call $_ZL13getMaxPayloadP6Region
    i32.store offset=20
    block  ;; label = @1
      get_local 2
      i32.load offset=20
      get_local 2
      i32.load offset=24
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 1346
      i32.const 1197
      i32.const 438
      i32.const 1366
      call $__assert_fail
      unreachable
    end
    get_local 2
    get_local 2
    i32.load offset=20
    get_local 2
    i32.load offset=24
    i32.sub
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.load offset=28
        i32.const 0
        i32.load offset=1028
        i32.ne
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=16
        i32.const 8
        i32.lt_u
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=16
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            get_local 2
            i32.load offset=20
            i32.const 8
            i32.add
            call $_ZL16extendLastRegionj
            i32.eqz
            br_if 0 (;@4;)
            get_local 2
            get_local 2
            i32.load offset=16
            i32.const 8
            i32.add
            i32.store offset=16
            block  ;; label = @5
              get_local 2
              i32.load offset=16
              i32.const 16
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 1389
              i32.const 1197
              i32.const 455
              i32.const 1366
              call $__assert_fail
              unreachable
            end
            br 1 (;@3;)
          end
          br 2 (;@1;)
        end
      end
      get_local 2
      i32.load offset=16
      i32.const 16
      i32.lt_u
      br_if 0 (;@1;)
      get_local 2
      get_local 2
      i32.load offset=28
      call $_ZL8getAfterP6Region
      i32.store offset=12
      get_local 2
      get_local 2
      i32.load offset=28
      call $_ZL10getPayloadP6Region
      get_local 2
      i32.load offset=24
      i32.add
      call $_ZL14alignUpPointerPv
      i32.store offset=8
      get_local 2
      i32.load offset=28
      get_local 2
      i32.load offset=8
      get_local 2
      i32.load offset=28
      i32.sub
      call 54
      get_local 2
      get_local 2
      i32.load offset=12
      get_local 2
      i32.load offset=8
      i32.sub
      i32.store offset=4
      block  ;; label = @2
        get_local 2
        i32.load offset=4
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1414
        i32.const 1197
        i32.const 470
        i32.const 1366
        call $__assert_fail
        unreachable
      end
      get_local 2
      i32.load offset=8
      get_local 2
      i32.load offset=4
      call 54
      get_local 2
      i32.load offset=28
      set_local 1
      get_local 2
      i32.load offset=8
      call 30
      get_local 1
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          get_local 2
          i32.load offset=28
          i32.const 0
          i32.load offset=1028
          i32.eq
          br_if 0 (;@3;)
          get_local 2
          i32.load offset=8
          set_local 1
          get_local 2
          i32.load offset=8
          call 26
          call 30
          get_local 1
          i32.store
          br 1 (;@2;)
        end
        i32.const 0
        get_local 2
        i32.load offset=8
        i32.store offset=1028
      end
      get_local 2
      i32.load offset=8
      call $_ZL9stopUsingP6Region
    end
    get_local 2
    i32.const 32
    i32.add
    set_global 0)
  (func (;26;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=8
        tee_local 0
        i32.const 0
        i32.load offset=1028
        i32.eq
        br_if 0 (;@2;)
        get_local 1
        get_local 0
        get_local 0
        call 28
        i32.add
        i32.store offset=12
        br 1 (;@1;)
      end
      get_local 1
      get_local 1
      i32.const 16
      i32.add
      i32.store offset=24
      get_local 1
      i32.const -1
      i32.store offset=20
      get_local 1
      i32.load offset=24
      i32.const 0
      i32.store
      get_local 1
      get_local 1
      i32.load offset=16
      i32.store
      get_local 1
      get_local 1
      i32.store offset=28
      get_local 1
      i32.const 0
      i32.store offset=12
    end
    get_local 1
    i32.load offset=12
    set_local 0
    get_local 1
    i32.const 32
    i32.add
    set_global 0
    get_local 0)
  (func $_ZL18removeFromFreeListP6Region (type 3) (param i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    get_local 1
    i32.load offset=12
    call $_ZL13getMaxPayloadP6Region
    call $_ZL16getFreeListIndexj
    i32.store offset=8
    get_local 1
    get_local 1
    i32.load offset=12
    call 47
    i32.store offset=4
    block  ;; label = @1
      i32.const 1040
      get_local 1
      i32.load offset=8
      i32.const 2
      i32.shl
      i32.add
      i32.load
      get_local 1
      i32.load offset=4
      i32.ne
      br_if 0 (;@1;)
      get_local 1
      i32.load offset=4
      call 45
      set_local 0
      i32.const 1040
      get_local 1
      i32.load offset=8
      i32.const 2
      i32.shl
      i32.add
      get_local 0
      i32.load
      i32.store
    end
    block  ;; label = @1
      get_local 1
      i32.load offset=4
      call 52
      i32.load
      i32.const 0
      i32.eq
      br_if 0 (;@1;)
      get_local 1
      i32.load offset=4
      call 45
      i32.load
      set_local 0
      get_local 1
      i32.load offset=4
      call 52
      i32.load
      call 45
      get_local 0
      i32.store
    end
    block  ;; label = @1
      get_local 1
      i32.load offset=4
      call 45
      i32.load
      i32.const 0
      i32.eq
      br_if 0 (;@1;)
      get_local 1
      i32.load offset=4
      call 52
      i32.load
      set_local 0
      get_local 1
      i32.load offset=4
      call 45
      i32.load
      call 52
      get_local 0
      i32.store
    end
    get_local 1
    i32.const 16
    i32.add
    set_global 0)
  (func (;28;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.load
    i32.const 1
    i32.shr_u)
  (func (;29;) (type 6) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    get_local 0
    i32.store offset=12
    get_local 2
    get_local 1
    i32.store offset=8
    get_local 2
    i32.load offset=12
    tee_local 1
    get_local 1
    i32.load
    i32.const 1
    i32.and
    get_local 1
    i32.load
    i32.const 1
    i32.shr_u
    get_local 2
    i32.load offset=8
    i32.add
    i32.const 2147483647
    i32.and
    i32.const 1
    i32.shl
    i32.or
    i32.store)
  (func (;30;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.const 4
    i32.add)
  (func $_ZL16extendLastRegionj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=24
    get_local 1
    i32.const 0
    i32.load offset=1028
    call $_ZL13getMaxPayloadP6Region
    i32.store offset=20
    get_local 1
    get_local 1
    i32.load offset=24
    call $_ZL7alignUpj
    get_local 1
    i32.load offset=20
    i32.sub
    i32.store offset=16
    get_local 1
    get_local 1
    i32.load offset=16
    call $sbrk
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=12
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        get_local 1
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      block  ;; label = @2
        get_local 1
        i32.load offset=12
        i32.const 0
        i32.load offset=1028
        call $_ZL8getAfterP6Region
        i32.eq
        br_if 0 (;@2;)
        i32.const 1448
        i32.const 1197
        i32.const 427
        i32.const 1476
        call $__assert_fail
        unreachable
      end
      i32.const 0
      i32.load offset=1028
      get_local 1
      i32.load offset=16
      call $_ZL10growRegionP6Regionj
      get_local 1
      i32.const 1
      i32.store offset=28
    end
    get_local 1
    i32.load offset=28
    set_local 0
    get_local 1
    i32.const 32
    i32.add
    set_global 0
    get_local 0)
  (func (;32;) (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 0
    i32.store offset=12
    get_local 3
    get_local 1
    i32.store offset=8
    get_local 3
    get_local 2
    i32.store offset=4
    get_local 3
    get_local 3
    i32.load offset=12
    get_local 3
    i32.load offset=8
    get_local 3
    i32.load offset=4
    call $_ZL23emmalloc_posix_memalignPPvjj
    i32.store
    get_local 3
    i32.load
    set_local 2
    get_local 3
    i32.const 16
    i32.add
    set_global 0
    get_local 2)
  (func $_ZL23emmalloc_posix_memalignPPvjj (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 0
    i32.store offset=24
    get_local 3
    get_local 1
    i32.store offset=20
    get_local 3
    get_local 2
    i32.store offset=16
    get_local 3
    get_local 3
    i32.const 32
    i32.add
    i32.store offset=40
    get_local 3
    i32.const -1
    i32.store offset=36
    get_local 3
    i32.load offset=40
    i32.const 0
    i32.store
    get_local 3
    get_local 3
    i32.load offset=32
    i32.store offset=8
    get_local 3
    get_local 3
    i32.const 8
    i32.add
    i32.store offset=44
    get_local 3
    i32.load offset=24
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 3
          i32.load offset=20
          call $_ZL10isPowerOf2j
          i32.const 1
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          get_local 3
          i32.load offset=20
          call $_ZL17isMultipleOfSizeTj
          br_if 1 (;@2;)
        end
        get_local 3
        i32.const 22
        i32.store offset=28
        br 1 (;@1;)
      end
      block  ;; label = @2
        get_local 3
        i32.load offset=16
        br_if 0 (;@2;)
        get_local 3
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          get_local 3
          i32.load offset=20
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          get_local 3
          i32.load offset=16
          call $_ZL15emmalloc_mallocj
          set_local 2
          get_local 3
          i32.load offset=24
          get_local 2
          i32.store
          br 1 (;@2;)
        end
        get_local 3
        i32.load offset=16
        get_local 3
        i32.load offset=20
        call $_ZL17alignedAllocationjj
        set_local 2
        get_local 3
        i32.load offset=24
        get_local 2
        i32.store
      end
      block  ;; label = @2
        get_local 3
        i32.load offset=24
        i32.load
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        get_local 3
        i32.const 12
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 3
      i32.const 0
      i32.store offset=28
    end
    get_local 3
    i32.load offset=28
    set_local 2
    get_local 3
    i32.const 48
    i32.add
    set_global 0
    get_local 2)
  (func $_ZL10isPowerOf2j (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.popcnt
    i32.const 1
    i32.eq)
  (func $_ZL17isMultipleOfSizeTj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.const 3
    i32.and
    i32.const 0
    i32.eq)
  (func $_ZL17alignedAllocationjj (type 4) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 112
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=48
    get_local 2
    get_local 1
    i32.store offset=44
    block  ;; label = @1
      get_local 2
      i32.load offset=44
      i32.const 8
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 1773
      i32.const 1197
      i32.const 949
      i32.const 1795
      call $__assert_fail
      unreachable
    end
    block  ;; label = @1
      get_local 2
      i32.load offset=44
      i32.const 7
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1813
      i32.const 1197
      i32.const 950
      i32.const 1795
      call $__assert_fail
      unreachable
    end
    get_local 2
    get_local 2
    i32.load offset=48
    get_local 2
    i32.load offset=44
    i32.add
    call $_ZL15tryFromFreeListj
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.load offset=40
        i32.const 0
        i32.eq
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=40
        call $_ZL10getPayloadP6Region
        get_local 2
        i32.load offset=44
        i32.rem_u
        br_if 0 (;@2;)
        get_local 2
        get_local 2
        i32.load offset=40
        call $_ZL10getPayloadP6Region
        i32.store offset=52
        br 1 (;@1;)
      end
      block  ;; label = @2
        get_local 2
        i32.load offset=40
        i32.const 0
        i32.eq
        br_if 0 (;@2;)
        get_local 2
        i32.load offset=40
        call $_ZL9stopUsingP6Region
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=1028
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        get_local 2
        i32.const 16
        call $_ZL15emmalloc_mallocj
        i32.store offset=36
        block  ;; label = @3
          get_local 2
          i32.load offset=36
          i32.const 0
          i32.ne
          br_if 0 (;@3;)
          get_local 2
          get_local 2
          i32.const 56
          i32.add
          i32.store offset=68
          get_local 2
          i32.const -1
          i32.store offset=64
          get_local 2
          i32.load offset=68
          i32.const 0
          i32.store
          get_local 2
          get_local 2
          i32.load offset=56
          i32.store offset=32
          get_local 2
          get_local 2
          i32.const 32
          i32.add
          i32.store offset=72
          get_local 2
          i32.const 0
          i32.store offset=52
          br 2 (;@1;)
        end
      end
      get_local 2
      i32.const 0
      i32.load offset=1028
      call $_ZL8getAfterP6Region
      i32.const 8
      i32.add
      i32.store offset=28
      get_local 2
      get_local 2
      i32.load offset=28
      get_local 2
      i32.load offset=44
      i32.rem_u
      i32.store offset=24
      block  ;; label = @2
        get_local 2
        i32.load offset=24
        i32.eqz
        br_if 0 (;@2;)
        get_local 2
        get_local 2
        i32.load offset=44
        get_local 2
        i32.load offset=24
        i32.sub
        i32.store offset=20
        block  ;; label = @3
          get_local 2
          i32.load offset=20
          i32.const 7
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1840
          i32.const 1197
          i32.const 982
          i32.const 1795
          call $__assert_fail
          unreachable
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1028
          call $_ZL13getMaxPayloadP6Region
          get_local 2
          i32.load offset=20
          i32.add
          call $_ZL16extendLastRegionj
          br_if 0 (;@3;)
          get_local 2
          get_local 2
          i32.const 96
          i32.add
          i32.store offset=104
          get_local 2
          i32.const -1
          i32.store offset=100
          get_local 2
          i32.load offset=104
          i32.const 0
          i32.store
          get_local 2
          get_local 2
          i32.load offset=96
          i32.store offset=16
          get_local 2
          get_local 2
          i32.const 16
          i32.add
          i32.store offset=108
          get_local 2
          i32.const 0
          i32.store offset=52
          br 2 (;@1;)
        end
        get_local 2
        i32.const 0
        i32.load offset=1028
        call $_ZL8getAfterP6Region
        i32.const 8
        i32.add
        i32.store offset=28
        get_local 2
        get_local 2
        i32.load offset=28
        get_local 2
        i32.load offset=44
        i32.rem_u
        i32.store offset=24
        block  ;; label = @3
          get_local 2
          i32.load offset=24
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1863
          i32.const 1197
          i32.const 988
          i32.const 1795
          call $__assert_fail
          unreachable
        end
      end
      get_local 2
      get_local 2
      i32.load offset=48
      call $_ZL14allocateRegionj
      i32.store offset=12
      block  ;; label = @2
        get_local 2
        i32.load offset=12
        i32.const 0
        i32.ne
        br_if 0 (;@2;)
        get_local 2
        get_local 2
        i32.const 80
        i32.add
        i32.store offset=92
        get_local 2
        i32.const -1
        i32.store offset=88
        get_local 2
        i32.load offset=92
        i32.const 0
        i32.store
        get_local 2
        get_local 2
        i32.load offset=80
        i32.store offset=8
        get_local 2
        get_local 2
        i32.const 8
        i32.add
        i32.store offset=76
        get_local 2
        i32.const 0
        i32.store offset=52
        br 1 (;@1;)
      end
      get_local 2
      get_local 2
      i32.load offset=12
      call $_ZL10getPayloadP6Region
      i32.store offset=4
      block  ;; label = @2
        get_local 2
        i32.load offset=4
        get_local 2
        i32.load offset=28
        i32.eq
        br_if 0 (;@2;)
        i32.const 1874
        i32.const 1197
        i32.const 993
        i32.const 1795
        call $__assert_fail
        unreachable
      end
      block  ;; label = @2
        get_local 2
        i32.load offset=4
        get_local 2
        i32.load offset=44
        i32.rem_u
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1897
        i32.const 1197
        i32.const 994
        i32.const 1795
        call $__assert_fail
        unreachable
      end
      get_local 2
      get_local 2
      i32.load offset=4
      i32.store offset=52
    end
    get_local 2
    i32.load offset=52
    set_local 1
    get_local 2
    i32.const 112
    i32.add
    set_global 0
    get_local 1)
  (func (;37;) (type 4) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=12
    get_local 2
    get_local 1
    i32.store offset=8
    get_local 2
    get_local 2
    i32.load offset=12
    get_local 2
    i32.load offset=8
    call $_ZL17emmalloc_memalignjj
    i32.store offset=4
    get_local 2
    i32.load offset=4
    set_local 1
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 1)
  (func $_ZL17emmalloc_memalignjj (type 4) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=24
    get_local 2
    get_local 1
    i32.store offset=20
    block  ;; label = @1
      block  ;; label = @2
        get_local 2
        i32.const 16
        i32.add
        get_local 2
        i32.load offset=24
        get_local 2
        i32.load offset=20
        call $_ZL23emmalloc_posix_memalignPPvjj
        i32.eqz
        br_if 0 (;@2;)
        get_local 2
        get_local 2
        i32.const 32
        i32.add
        i32.store offset=40
        get_local 2
        i32.const -1
        i32.store offset=36
        get_local 2
        i32.load offset=40
        i32.const 0
        i32.store
        get_local 2
        get_local 2
        i32.load offset=32
        i32.store offset=8
        get_local 2
        get_local 2
        i32.const 8
        i32.add
        i32.store offset=44
        get_local 2
        i32.const 0
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 2
      get_local 2
      i32.load offset=16
      i32.store offset=28
    end
    get_local 2
    i32.load offset=28
    set_local 1
    get_local 2
    i32.const 48
    i32.add
    set_global 0
    get_local 1)
  (func (;39;) (type 3) (param i32)
    get_local 0
    call $_ZL17emmalloc_mallinfov)
  (func $_ZL17emmalloc_mallinfov (type 3) (param i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 0
    i32.const 0
    i32.store
    get_local 0
    i32.const 0
    i32.store offset=4
    get_local 0
    i32.const 0
    i32.store offset=8
    get_local 0
    i32.const 0
    i32.store offset=12
    get_local 0
    i32.const 0
    i32.store offset=16
    get_local 0
    i32.const 0
    i32.store offset=20
    get_local 0
    i32.const 0
    i32.store offset=24
    get_local 0
    i32.const 0
    i32.store offset=28
    get_local 0
    i32.const 0
    i32.store offset=4
    get_local 0
    i32.const 0
    i32.store offset=36
    block  ;; label = @1
      i32.const 0
      i32.load offset=1024
      i32.const 0
      i32.eq
      br_if 0 (;@1;)
      get_local 0
      i32.const 0
      call $sbrk
      i32.const 0
      i32.load offset=1024
      i32.sub
      i32.store
      get_local 1
      i32.const 0
      i32.load offset=1024
      i32.store offset=12
      block  ;; label = @2
        loop  ;; label = @3
          get_local 1
          i32.load offset=12
          i32.const 0
          i32.eq
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              get_local 1
              i32.load offset=12
              call 22
              i32.eqz
              br_if 0 (;@5;)
              get_local 0
              get_local 1
              i32.load offset=12
              call $_ZL13getMaxPayloadP6Region
              get_local 0
              i32.load offset=28
              i32.add
              i32.store offset=28
              br 1 (;@4;)
            end
            get_local 0
            get_local 1
            i32.load offset=12
            call $_ZL13getMaxPayloadP6Region
            get_local 0
            i32.load offset=32
            i32.add
            i32.store offset=32
            get_local 0
            get_local 0
            i32.load offset=4
            i32.const 1
            i32.add
            i32.store offset=4
          end
          get_local 1
          get_local 1
          i32.load offset=12
          call 26
          i32.store offset=12
          br 0 (;@3;)
        end
      end
    end
    get_local 1
    i32.const 16
    i32.add
    set_global 0)
  (func $_ZL25getBigEnoughFreeListIndexj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    block  ;; label = @1
      get_local 1
      i32.load offset=12
      i32.const 0
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 1226
      i32.const 1197
      i32.const 274
      i32.const 1235
      call $__assert_fail
      unreachable
    end
    get_local 1
    get_local 1
    i32.load offset=12
    call $_ZL16getFreeListIndexj
    i32.store offset=8
    block  ;; label = @1
      get_local 1
      i32.load offset=12
      call $_ZL10isPowerOf2j
      i32.const 1
      i32.and
      br_if 0 (;@1;)
      get_local 1
      get_local 1
      i32.load offset=8
      i32.const 1
      i32.add
      i32.store offset=8
    end
    get_local 1
    i32.load offset=8
    set_local 0
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func $_ZL26getMinSizeForFreeListIndexj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    i32.const 1
    get_local 1
    i32.load offset=12
    i32.shl)
  (func $_ZL12fromFreeInfoP8FreeInfo (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.const -8
    i32.add)
  (func $_ZL11useFreeInfoP8FreeInfoj (type 4) (param i32 i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=12
    get_local 2
    get_local 1
    i32.store offset=8
    get_local 2
    get_local 2
    i32.load offset=12
    call $_ZL12fromFreeInfoP8FreeInfo
    i32.store offset=4
    get_local 2
    i32.load offset=4
    call $_ZL18removeFromFreeListP6Region
    get_local 2
    i32.load offset=4
    get_local 2
    i32.load offset=8
    call $_ZL9useRegionP6Regionj
    get_local 2
    i32.load offset=4
    set_local 1
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    get_local 1)
  (func (;45;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.const 4
    i32.add)
  (func $_ZL14allocateRegionj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 80
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=40
    get_local 1
    get_local 1
    i32.load offset=40
    call $_ZL7alignUpj
    i32.const 8
    i32.add
    i32.store offset=36
    get_local 1
    get_local 1
    i32.load offset=36
    call $sbrk
    i32.store offset=32
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=32
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        get_local 1
        get_local 1
        i32.const 48
        i32.add
        i32.store offset=56
        get_local 1
        i32.const -1
        i32.store offset=52
        get_local 1
        i32.load offset=56
        i32.const 0
        i32.store
        get_local 1
        get_local 1
        i32.load offset=48
        i32.store offset=24
        get_local 1
        get_local 1
        i32.const 24
        i32.add
        i32.store offset=60
        get_local 1
        i32.const 0
        i32.store offset=44
        br 1 (;@1;)
      end
      get_local 1
      get_local 1
      i32.load offset=32
      call $_ZL14alignUpPointerPv
      i32.store offset=20
      block  ;; label = @2
        get_local 1
        i32.load offset=32
        get_local 1
        i32.load offset=20
        i32.eq
        br_if 0 (;@2;)
        get_local 1
        get_local 1
        i32.load offset=20
        get_local 1
        i32.load offset=32
        i32.sub
        i32.store offset=16
        get_local 1
        get_local 1
        i32.load offset=16
        call $sbrk
        i32.store offset=12
        block  ;; label = @3
          get_local 1
          i32.load offset=12
          i32.const -1
          i32.ne
          br_if 0 (;@3;)
          get_local 1
          get_local 1
          i32.const 64
          i32.add
          i32.store offset=72
          get_local 1
          i32.const -1
          i32.store offset=68
          get_local 1
          i32.load offset=72
          i32.const 0
          i32.store
          get_local 1
          get_local 1
          i32.load offset=64
          i32.store offset=8
          get_local 1
          get_local 1
          i32.const 8
          i32.add
          i32.store offset=76
          get_local 1
          i32.const 0
          i32.store offset=44
          br 2 (;@1;)
        end
        block  ;; label = @3
          get_local 1
          i32.load offset=12
          get_local 1
          i32.load offset=32
          get_local 1
          i32.load offset=36
          i32.add
          i32.eq
          br_if 0 (;@3;)
          i32.const 1570
          i32.const 1197
          i32.const 748
          i32.const 1611
          call $__assert_fail
          unreachable
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1028
          i32.const 0
          i32.eq
          br_if 0 (;@3;)
          i32.const 1626
          i32.const 1197
          i32.const 750
          i32.const 1611
          call $__assert_fail
          unreachable
        end
      end
      get_local 1
      get_local 1
      i32.load offset=20
      i32.store offset=4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1028
          i32.const 0
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1024
            i32.const 0
            i32.eq
            br_if 0 (;@4;)
            i32.const 1638
            i32.const 1197
            i32.const 759
            i32.const 1611
            call $__assert_fail
            unreachable
          end
          i32.const 0
          get_local 1
          i32.load offset=4
          i32.store offset=1024
          i32.const 0
          get_local 1
          i32.load offset=4
          i32.store offset=1028
          br 1 (;@2;)
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1024
          i32.const 0
          i32.ne
          br_if 0 (;@3;)
          i32.const 1651
          i32.const 1197
          i32.const 763
          i32.const 1611
          call $__assert_fail
          unreachable
        end
        i32.const 0
        i32.load offset=1028
        set_local 0
        get_local 1
        i32.load offset=4
        call 30
        get_local 0
        i32.store
        i32.const 0
        get_local 1
        i32.load offset=4
        i32.store offset=1028
      end
      get_local 1
      i32.load offset=4
      get_local 1
      i32.load offset=36
      call 54
      get_local 1
      i32.load offset=4
      i32.const 1
      call 24
      get_local 1
      get_local 1
      i32.load offset=4
      i32.store offset=44
    end
    get_local 1
    i32.load offset=44
    set_local 0
    get_local 1
    i32.const 80
    i32.add
    set_global 0
    get_local 0)
  (func (;47;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.const 8
    i32.add)
  (func (;48;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.const 8
    i32.add)
  (func $_ZL16getFreeListIndexj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    block  ;; label = @1
      get_local 1
      i32.load offset=12
      i32.const 0
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 1226
      i32.const 1197
      i32.const 258
      i32.const 1261
      call $__assert_fail
      unreachable
    end
    block  ;; label = @1
      get_local 1
      i32.load offset=12
      i32.const 8
      i32.ge_u
      br_if 0 (;@1;)
      get_local 1
      i32.const 8
      i32.store offset=12
    end
    get_local 1
    get_local 1
    i32.load offset=12
    call $_ZL18lowerBoundPowerOf2j
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        i32.const 3
        get_local 1
        i32.load offset=8
        i32.gt_u
        br_if 0 (;@2;)
        get_local 1
        i32.load offset=8
        i32.const 32
        i32.lt_u
        br_if 1 (;@1;)
      end
      i32.const 1278
      i32.const 1197
      i32.const 263
      i32.const 1261
      call $__assert_fail
      unreachable
    end
    get_local 1
    i32.load offset=8
    set_local 0
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func $_ZL9useRegionP6Regionj (type 6) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=12
    get_local 2
    get_local 1
    i32.store offset=8
    block  ;; label = @1
      get_local 2
      i32.load offset=8
      i32.const 0
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 1226
      i32.const 1197
      i32.const 489
      i32.const 1336
      call $__assert_fail
      unreachable
    end
    get_local 2
    i32.load offset=12
    i32.const 1
    call 24
    get_local 2
    i32.load offset=12
    get_local 2
    i32.load offset=8
    call $_ZL22possiblySplitRemainderP6Regionj
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $_ZL18lowerBoundPowerOf2j (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=8
        br_if 0 (;@2;)
        get_local 1
        i32.const 1
        i32.store offset=12
        br 1 (;@1;)
      end
      get_local 1
      i32.const 31
      get_local 1
      i32.load offset=8
      i32.clz
      i32.sub
      i32.store offset=12
    end
    get_local 1
    i32.load offset=12)
  (func (;52;) (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12)
  (func $_ZL14alignUpPointerPv (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    call $_ZL7alignUpj
    set_local 0
    get_local 1
    i32.const 16
    i32.add
    set_global 0
    get_local 0)
  (func (;54;) (type 6) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    get_local 0
    i32.store offset=12
    get_local 2
    get_local 1
    i32.store offset=8
    get_local 2
    i32.load offset=12
    tee_local 1
    get_local 1
    i32.load
    i32.const 1
    i32.and
    get_local 2
    i32.load offset=8
    i32.const 2147483647
    i32.and
    i32.const 1
    i32.shl
    i32.or
    i32.store)
  (func $_ZL7alignUpj (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    get_local 0
    i32.store offset=12
    get_local 1
    i32.load offset=12
    i32.const 8
    i32.add
    i32.const 1
    i32.sub
    i32.const -8
    i32.and)
  (func $_ZL10growRegionP6Regionj (type 6) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 0
    i32.store offset=12
    get_local 2
    get_local 1
    i32.store offset=8
    block  ;; label = @1
      get_local 2
      i32.load offset=12
      call 22
      br_if 0 (;@1;)
      get_local 2
      i32.load offset=12
      call $_ZL18removeFromFreeListP6Region
    end
    get_local 2
    i32.load offset=12
    get_local 2
    i32.load offset=8
    call 29
    block  ;; label = @1
      get_local 2
      i32.load offset=12
      call 22
      br_if 0 (;@1;)
      get_local 2
      i32.load offset=12
      call $_ZL13addToFreeListP6Region
    end
    get_local 2
    i32.const 16
    i32.add
    set_global 0)
  (func $_ZL27mergeIntoExistingFreeRegionP6Region (type 1) (param i32) (result i32)
    (local i32)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=24
    block  ;; label = @1
      get_local 1
      i32.load offset=24
      call $_ZL8getAfterP6Region
      i32.const 0
      call $sbrk
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1169
      i32.const 1197
      i32.const 334
      i32.const 1507
      call $__assert_fail
      unreachable
    end
    get_local 1
    i32.const 0
    i32.store offset=20
    get_local 1
    get_local 1
    i32.load offset=24
    call 30
    i32.load
    i32.store offset=16
    get_local 1
    get_local 1
    i32.load offset=24
    call 26
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        get_local 1
        i32.load offset=16
        i32.const 0
        i32.eq
        br_if 0 (;@2;)
        get_local 1
        i32.load offset=16
        call 22
        br_if 0 (;@2;)
        get_local 1
        i32.load offset=16
        call $_ZL18removeFromFreeListP6Region
        get_local 1
        i32.load offset=16
        get_local 1
        i32.load offset=24
        call 28
        call 29
        block  ;; label = @3
          block  ;; label = @4
            get_local 1
            i32.load offset=12
            i32.const 0
            i32.eq
            br_if 0 (;@4;)
            get_local 1
            i32.load offset=16
            set_local 0
            get_local 1
            i32.load offset=12
            call 30
            get_local 0
            i32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            get_local 1
            i32.load offset=24
            i32.const 0
            i32.load offset=1028
            i32.eq
            br_if 0 (;@4;)
            i32.const 1535
            i32.const 1197
            i32.const 348
            i32.const 1507
            call $__assert_fail
            unreachable
          end
          i32.const 0
          get_local 1
          i32.load offset=16
          i32.store offset=1028
        end
        block  ;; label = @3
          get_local 1
          i32.load offset=12
          i32.const 0
          i32.eq
          br_if 0 (;@3;)
          block  ;; label = @4
            get_local 1
            i32.load offset=12
            call 22
            br_if 0 (;@4;)
            get_local 1
            i32.load offset=12
            call $_ZL18removeFromFreeListP6Region
            get_local 1
            i32.load offset=16
            get_local 1
            i32.load offset=12
            call 28
            call 29
            block  ;; label = @5
              block  ;; label = @6
                get_local 1
                i32.load offset=12
                i32.const 0
                i32.load offset=1028
                i32.eq
                br_if 0 (;@6;)
                get_local 1
                i32.load offset=16
                set_local 0
                get_local 1
                i32.load offset=12
                call 26
                call 30
                get_local 0
                i32.store
                br 1 (;@5;)
              end
              i32.const 0
              get_local 1
              i32.load offset=16
              i32.store offset=1028
            end
          end
        end
        get_local 1
        i32.load offset=16
        call $_ZL13addToFreeListP6Region
        get_local 1
        i32.const 1
        i32.store offset=28
        br 1 (;@1;)
      end
      block  ;; label = @2
        get_local 1
        i32.load offset=12
        i32.const 0
        i32.eq
        br_if 0 (;@2;)
        get_local 1
        i32.load offset=12
        call 22
        br_if 0 (;@2;)
        get_local 1
        i32.load offset=12
        call $_ZL18removeFromFreeListP6Region
        get_local 1
        i32.load offset=24
        get_local 1
        i32.load offset=12
        call 28
        call 29
        block  ;; label = @3
          block  ;; label = @4
            get_local 1
            i32.load offset=12
            i32.const 0
            i32.load offset=1028
            i32.eq
            br_if 0 (;@4;)
            get_local 1
            i32.load offset=24
            set_local 0
            get_local 1
            i32.load offset=12
            call 26
            call 30
            get_local 0
            i32.store
            br 1 (;@3;)
          end
          i32.const 0
          get_local 1
          i32.load offset=24
          i32.store offset=1028
        end
        get_local 1
        i32.load offset=24
        call $_ZL13addToFreeListP6Region
        get_local 1
        i32.const 1
        i32.store offset=28
        br 1 (;@1;)
      end
      get_local 1
      i32.const 0
      i32.store offset=28
    end
    get_local 1
    i32.load offset=28
    set_local 0
    get_local 1
    i32.const 32
    i32.add
    set_global 0
    get_local 0)
  (func $_ZL13addToFreeListP6Region (type 3) (param i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 1
    set_global 0
    get_local 1
    get_local 0
    i32.store offset=28
    block  ;; label = @1
      get_local 1
      i32.load offset=28
      call $_ZL8getAfterP6Region
      i32.const 0
      call $sbrk
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1169
      i32.const 1197
      i32.const 316
      i32.const 1493
      call $__assert_fail
      unreachable
    end
    get_local 1
    get_local 1
    i32.load offset=28
    call $_ZL13getMaxPayloadP6Region
    call $_ZL16getFreeListIndexj
    i32.store offset=24
    get_local 1
    get_local 1
    i32.load offset=28
    call 47
    i32.store offset=20
    get_local 1
    i32.const 1040
    get_local 1
    i32.load offset=24
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store offset=16
    i32.const 1040
    get_local 1
    i32.load offset=24
    i32.const 2
    i32.shl
    i32.add
    get_local 1
    i32.load offset=20
    i32.store
    get_local 1
    get_local 1
    i32.const 32
    i32.add
    i32.store offset=40
    get_local 1
    i32.const -1
    i32.store offset=36
    get_local 1
    i32.load offset=40
    i32.const 0
    i32.store
    get_local 1
    get_local 1
    i32.load offset=32
    i32.store offset=8
    get_local 1
    get_local 1
    i32.const 8
    i32.add
    i32.store offset=44
    get_local 1
    i32.load offset=20
    call 52
    i32.const 0
    i32.store
    get_local 1
    i32.load offset=16
    set_local 0
    get_local 1
    i32.load offset=20
    call 45
    get_local 0
    i32.store
    block  ;; label = @1
      get_local 1
      i32.load offset=16
      i32.const 0
      i32.eq
      br_if 0 (;@1;)
      get_local 1
      i32.load offset=20
      set_local 0
      get_local 1
      i32.load offset=16
      call 52
      get_local 0
      i32.store
    end
    get_local 1
    i32.const 48
    i32.add
    set_global 0)
  (func $_GLOBAL__sub_I_emmalloc.cpp (type 0)
    call $__cxx_global_var_init
    call $__cxx_global_var_init.1
    call $__cxx_global_var_init.2)
  (table (;0;) 1 1 anyfunc)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 67472))
  (export "memory" (memory 0))
  (export "_Z31emmalloc_blank_slate_from_orbitv" (func 7))
  (export "malloc" (func 8))
  (export "free" (func 14))
  (export "calloc" (func 18))
  (export "realloc" (func 20))
  (export "posix_memalign" (func 32))
  (export "memalign" (func 37))
  (export "mallinfo" (func 39))
  (data (i32.const 1024) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (i32.const 1169) "getAfter(region) <= sbrk(0)\00emmalloc.cpp\00emmalloc_malloc\00size > 0\00getBigEnoughFreeListIndex\00getFreeListIndex\00MIN_FREELIST_INDEX <= index && index < MAX_FREELIST_INDEX\00useRegion\00payloadSize >= size\00possiblySplitRemainder\00extra >= MIN_REGION_SIZE\00totalSplitSize >= MIN_REGION_SIZE\00ptr == getAfter(lastRegion)\00extendLastRegion\00addToFreeList\00mergeIntoExistingFreeRegion\00region == lastRegion\00newAllocation\00(char*)extraPtr == (char*)ptr + sbrkSize\00allocateRegion\00!lastRegion\00!firstRegion\00firstRegion\00((char*)&region->freeInfo()) - ((char*)region) == METADATA_SIZE\00getPayload\00region->getUsed()\00emmalloc_realloc\00alignment > ALIGNMENT\00alignedAllocation\00alignment % ALIGNMENT == 0\00extra % ALIGNMENT == 0\00error == 0\00size_t(ptr) == address\00size_t(ptr) % alignment == 0\00"))
