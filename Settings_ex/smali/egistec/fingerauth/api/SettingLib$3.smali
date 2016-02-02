.class Legistec/fingerauth/api/SettingLib$3;
.super Landroid/os/Handler;
.source "SettingLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Legistec/fingerauth/api/SettingLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Legistec/fingerauth/api/SettingLib;


# direct methods
.method constructor <init>(Legistec/fingerauth/api/SettingLib;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    .line 595
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    .line 598
    const-string v8, "SettingLib"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "msg.what = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 837
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 604
    :sswitch_1
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # getter for: Legistec/fingerauth/api/SettingLib;->mDelay:I
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$3(Legistec/fingerauth/api/SettingLib;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$4(Legistec/fingerauth/api/SettingLib;I)V

    .line 605
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # getter for: Legistec/fingerauth/api/SettingLib;->mDelay:I
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$3(Legistec/fingerauth/api/SettingLib;)I

    move-result v8

    if-gez v8, :cond_0

    .line 607
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # getter for: Legistec/fingerauth/api/SettingLib;->timer:Ljava/util/Timer;
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$5(Legistec/fingerauth/api/SettingLib;)Ljava/util/Timer;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 609
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # getter for: Legistec/fingerauth/api/SettingLib;->timer:Ljava/util/Timer;
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$5(Legistec/fingerauth/api/SettingLib;)Ljava/util/Timer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Timer;->cancel()V

    .line 610
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    invoke-static {v8, v11}, Legistec/fingerauth/api/SettingLib;->access$6(Legistec/fingerauth/api/SettingLib;Ljava/util/Timer;)V

    .line 612
    :cond_1
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x1b

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto :goto_0

    .line 619
    :sswitch_2
    iget v8, p1, Landroid/os/Message;->arg1:I

    sparse-switch v8, :sswitch_data_1

    .line 626
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget v9, p1, Landroid/os/Message;->arg1:I

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatusCandidate(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$9(Legistec/fingerauth/api/SettingLib;I)V

    goto :goto_0

    .line 623
    :sswitch_3
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnEnrollMap()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$8(Legistec/fingerauth/api/SettingLib;)V

    goto :goto_0

    .line 635
    :sswitch_4
    const-string v8, "SettingLib"

    const-string v9, "get FP_HANDLE_RESULT.FP_RES_BLOB"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget v8, p1, Landroid/os/Message;->arg1:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 646
    :sswitch_5
    iget v8, p1, Landroid/os/Message;->arg1:I

    packed-switch v8, :pswitch_data_1

    goto :goto_0

    .line 648
    :pswitch_1
    const-string v8, "SettingLib"

    const-string v9, "DEV_EXTRA_PERMISSION_GRANTED"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnPermissionGranted()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$10(Legistec/fingerauth/api/SettingLib;)V

    goto :goto_0

    .line 652
    :pswitch_2
    const-string v8, "SettingLib"

    const-string v9, "DEV_ACTION_USB_DEVICE_ATTACHED"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnDevicePlug()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$11(Legistec/fingerauth/api/SettingLib;)V

    goto :goto_0

    .line 657
    :pswitch_3
    const-string v8, "SettingLib"

    const-string v9, "DEV_ACTION_USB_DEVICE_DEATTACHED"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnDeviceUnPlug()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$12(Legistec/fingerauth/api/SettingLib;)V

    goto :goto_0

    .line 666
    :sswitch_6
    const-string v8, "SettingLib"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "FP_HANDLE_RESULT.FP_RESULT msg.arg1 = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget v8, p1, Landroid/os/Message;->arg1:I

    sparse-switch v8, :sswitch_data_2

    goto/16 :goto_0

    .line 700
    :sswitch_7
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_ENROLL_OK"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnEnrollSuccess()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$14(Legistec/fingerauth/api/SettingLib;)V

    goto/16 :goto_0

    .line 671
    :sswitch_8
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_SOMETHING_ON_SENSOR"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x445

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 676
    :sswitch_9
    const-string v8, "SettingLib"

    const-string v9, "FP_HANDLE_RESULT.FP_RES_ENROLL_COUNT"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnProgress()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$13(Legistec/fingerauth/api/SettingLib;)V

    goto/16 :goto_0

    .line 682
    :sswitch_a
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_SENSOR_OPEN"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x437

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 688
    :sswitch_b
    const-string v8, "SettingLib"

    const-string v9, "FP_HANDLE_RESULT.FP_RES_GETTED_GOOD_IMAGE"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x3f0

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 694
    :sswitch_c
    const-string v8, "SettingLib"

    const-string v9, "FP_HANDLE_RESULT.FP_RES_EXTRACTING_FEATURE"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x3ef

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 705
    :sswitch_d
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_ENROLL_FAIL"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnEnrollFail()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$15(Legistec/fingerauth/api/SettingLib;)V

    goto/16 :goto_0

    .line 711
    :sswitch_e
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_ABORT_OK"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnUserAbort()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$16(Legistec/fingerauth/api/SettingLib;)V

    goto/16 :goto_0

    .line 717
    :sswitch_f
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_GETTING_IMAGE"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnFingerFetch()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$17(Legistec/fingerauth/api/SettingLib;)V

    goto/16 :goto_0

    .line 722
    :sswitch_10
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_GETTED_IMAGE"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnFingerImageGetted()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$18(Legistec/fingerauth/api/SettingLib;)V

    goto/16 :goto_0

    .line 727
    :sswitch_11
    const/16 v7, 0x3f1

    .line 728
    .local v7, "status":I
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnBadImage(I)V
    invoke-static {v8, v7}, Legistec/fingerauth/api/SettingLib;->access$19(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 731
    .end local v7    # "status":I
    :sswitch_12
    const/16 v7, 0x444

    .line 732
    .restart local v7    # "status":I
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnBadImage(I)V
    invoke-static {v8, v7}, Legistec/fingerauth/api/SettingLib;->access$19(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 735
    .end local v7    # "status":I
    :sswitch_13
    const/16 v7, 0x3fe

    .line 736
    .restart local v7    # "status":I
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnBadImage(I)V
    invoke-static {v8, v7}, Legistec/fingerauth/api/SettingLib;->access$19(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 740
    .end local v7    # "status":I
    :sswitch_14
    :try_start_0
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v8, v8, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v8}, Legistec/fingerauth/api/IFPAuthService;->getRawData()[B

    move-result-object v4

    .line 741
    .local v4, "rawData":[B
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v8, v8, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v8}, Legistec/fingerauth/api/IFPAuthService;->getRawDataInfo()[I

    move-result-object v5

    .line 742
    .local v5, "rawDataSize":[I
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x1

    aget v10, v5, v10

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnGetRawData([BII)V
    invoke-static {v8, v4, v9, v10}, Legistec/fingerauth/api/SettingLib;->access$20(Legistec/fingerauth/api/SettingLib;[BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 743
    .end local v4    # "rawData":[B
    .end local v5    # "rawDataSize":[I
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_15
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_MATCHED_OK"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnVerifySuccess()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$21(Legistec/fingerauth/api/SettingLib;)V

    goto/16 :goto_0

    .line 754
    :sswitch_16
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_MATCHED_FAIL"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnVerifyFail()V
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$22(Legistec/fingerauth/api/SettingLib;)V

    goto/16 :goto_0

    .line 759
    :sswitch_17
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_VERIFY_IMG"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :try_start_1
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v8, v8, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v8}, Legistec/fingerauth/api/IFPAuthService;->getThreadImgInfo()[I

    move-result-object v2

    .line 762
    .local v2, "imgInfo":[I
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v9, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v9, v9, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v9}, Legistec/fingerauth/api/IFPAuthService;->getThreadImg()[B

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnVerifyImg([BII)V
    invoke-static {v8, v9, v10, v11}, Legistec/fingerauth/api/SettingLib;->access$23(Legistec/fingerauth/api/SettingLib;[BII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 763
    .end local v2    # "imgInfo":[I
    :catch_1
    move-exception v1

    .line 765
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 769
    .end local v1    # "e1":Landroid/os/RemoteException;
    :sswitch_18
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # getter for: Legistec/fingerauth/api/SettingLib;->timer:Ljava/util/Timer;
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$5(Legistec/fingerauth/api/SettingLib;)Ljava/util/Timer;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 771
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # getter for: Legistec/fingerauth/api/SettingLib;->timer:Ljava/util/Timer;
    invoke-static {v8}, Legistec/fingerauth/api/SettingLib;->access$5(Legistec/fingerauth/api/SettingLib;)Ljava/util/Timer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Timer;->cancel()V

    .line 772
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    invoke-static {v8, v11}, Legistec/fingerauth/api/SettingLib;->access$6(Legistec/fingerauth/api/SettingLib;Ljava/util/Timer;)V

    .line 775
    :cond_2
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_FINGER_TOUCH"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x431

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 779
    :sswitch_19
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_FINGER_REMOVE"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x432

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 783
    :sswitch_1a
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_FINGER_WAIT_FPON"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x433

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 788
    :sswitch_1b
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_REDUNDANT"

    invoke-static {v8, v9}, Legistec/fingerauth/api/EgisLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x446

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 794
    :sswitch_1c
    :try_start_2
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v8, v8, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v8}, Legistec/fingerauth/api/IFPAuthService;->getVerifyLearningScore()I

    move-result v6

    .line 795
    .local v6, "score":I
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnLearningScore(I)V
    invoke-static {v8, v6}, Legistec/fingerauth/api/SettingLib;->access$24(Legistec/fingerauth/api/SettingLib;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 796
    .end local v6    # "score":I
    :catch_2
    move-exception v0

    .line 798
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 803
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_1d
    :try_start_3
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v8, v8, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v8}, Legistec/fingerauth/api/IFPAuthService;->getEnrollProgress()I

    move-result v3

    .line 804
    .local v3, "progress":I
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyEnrollMapProgress(I)V
    invoke-static {v8, v3}, Legistec/fingerauth/api/SettingLib;->access$25(Legistec/fingerauth/api/SettingLib;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 805
    .end local v3    # "progress":I
    :catch_3
    move-exception v0

    .line 807
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 812
    .end local v0    # "e":Landroid/os/RemoteException;
    :sswitch_1e
    :try_start_4
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v8, v8, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v8}, Legistec/fingerauth/api/IFPAuthService;->getMatchedImgInfo()[I

    move-result-object v2

    .line 813
    .restart local v2    # "imgInfo":[I
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v9, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    iget-object v9, v9, Legistec/fingerauth/api/SettingLib;->mFPAuthService:Legistec/fingerauth/api/IFPAuthService;

    invoke-interface {v9}, Legistec/fingerauth/api/IFPAuthService;->getMatchedImg()[B

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnMatchedImg([BII)V
    invoke-static {v8, v9, v10, v11}, Legistec/fingerauth/api/SettingLib;->access$26(Legistec/fingerauth/api/SettingLib;[BII)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 814
    .end local v2    # "imgInfo":[I
    :catch_4
    move-exception v1

    .line 816
    .restart local v1    # "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 820
    .end local v1    # "e1":Landroid/os/RemoteException;
    :sswitch_1f
    const-string v8, "SettingLib"

    const-string v9, "FP_RES_ENROLL_OVERTIME"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v8, p0, Legistec/fingerauth/api/SettingLib$3;->this$0:Legistec/fingerauth/api/SettingLib;

    const/16 v9, 0x449

    # invokes: Legistec/fingerauth/api/SettingLib;->notifyOnStatus(I)V
    invoke-static {v8, v9}, Legistec/fingerauth/api/SettingLib;->access$7(Legistec/fingerauth/api/SettingLib;I)V

    goto/16 :goto_0

    .line 600
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_6
        0x3fb -> :sswitch_4
        0x4b0 -> :sswitch_2
        0x7d0 -> :sswitch_5
        0x1771 -> :sswitch_1
    .end sparse-switch

    .line 619
    :sswitch_data_1
    .sparse-switch
        0x4d2 -> :sswitch_0
        0x4e0 -> :sswitch_3
    .end sparse-switch

    .line 636
    :pswitch_data_0
    .packed-switch 0x461
        :pswitch_0
    .end packed-switch

    .line 646
    :pswitch_data_1
    .packed-switch 0x7d4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 668
    :sswitch_data_2
    .sparse-switch
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_d
        0x3eb -> :sswitch_15
        0x3ec -> :sswitch_16
        0x3ed -> :sswitch_f
        0x3ee -> :sswitch_10
        0x3ef -> :sswitch_c
        0x3f0 -> :sswitch_b
        0x3f1 -> :sswitch_11
        0x3f3 -> :sswitch_9
        0x3f4 -> :sswitch_e
        0x3fa -> :sswitch_14
        0x3fe -> :sswitch_13
        0x431 -> :sswitch_18
        0x432 -> :sswitch_19
        0x433 -> :sswitch_1a
        0x434 -> :sswitch_1c
        0x436 -> :sswitch_17
        0x437 -> :sswitch_a
        0x438 -> :sswitch_1d
        0x443 -> :sswitch_1e
        0x444 -> :sswitch_12
        0x445 -> :sswitch_8
        0x446 -> :sswitch_1b
        0x449 -> :sswitch_1f
    .end sparse-switch
.end method
