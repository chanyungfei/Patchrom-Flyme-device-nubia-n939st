.class Lcom/android/settings_ex/sim/SimSettings$5;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/sim/SimSettings;->createDropDown(Lcom/android/settings_ex/notification/DropDownPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/sim/SimSettings;

.field final synthetic val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/sim/SimSettings;Lcom/android/settings_ex/notification/DropDownPreference;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    iput-object p2, p0, Lcom/android/settings_ex/sim/SimSettings$5;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 10
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 755
    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v0, v4

    .line 757
    .local v0, "subId":I
    :goto_0
    const-string v3, "SimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preference["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/sim/SimSettings$5;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v8}, Lcom/android/settings_ex/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]select value :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "with subid("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v7, "sim_cellular_data"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 760
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    if-eq v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mHasCDMACard:Z
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$900(Lcom/android/settings_ex/sim/SimSettings;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 763
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v7}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/android/settings_ex/sim/SimSettings;->access$202(Lcom/android/settings_ex/sim/SimSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 764
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$200(Lcom/android/settings_ex/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090bee

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$200(Lcom/android/settings_ex/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 766
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$200(Lcom/android/settings_ex/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090bef

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$200(Lcom/android/settings_ex/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 768
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$200(Lcom/android/settings_ex/sim/SimSettings;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 771
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->closeHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1200(Lcom/android/settings_ex/sim/SimSettings;)Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v8, 0xea60

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 774
    # setter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {v0}, Lcom/android/settings_ex/sim/SimSettings;->access$1302(I)I

    .line 775
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 778
    .local v1, "subIds":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 779
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_4

    array-length v3, v1

    if-lt v3, v5, :cond_4

    .line 780
    aget v3, v1, v6

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->mNotDefaultDataSubId:I
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1402(I)I

    .line 782
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mNotDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1400()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v4

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->mDataEnable:Z
    invoke-static {v3, v4}, Lcom/android/settings_ex/sim/SimSettings;->access$1502(Lcom/android/settings_ex/sim/SimSettings;Z)Z

    .line 785
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->getPrimarySlot()I
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1600(Lcom/android/settings_ex/sim/SimSettings;)I

    move-result v3

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 786
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 787
    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDataEnable:Z
    invoke-static {v4}, Lcom/android/settings_ex/sim/SimSettings;->access$1500(Lcom/android/settings_ex/sim/SimSettings;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 848
    .end local v1    # "subIds":[I
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_2
    return v5

    .line 755
    .end local v0    # "subId":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1100(Lcom/android/settings_ex/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v0, v3, v6

    goto/16 :goto_0

    .end local p2    # "value":Ljava/lang/Object;
    .restart local v0    # "subId":I
    :cond_2
    move v3, v6

    .line 775
    goto :goto_1

    .line 789
    .restart local v1    # "subIds":[I
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mNotDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1400()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/settings_ex/sim/SimSettings;->access$1700(Lcom/android/settings_ex/sim/SimSettings;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/settings_ex/sim/SimSettings;->setPrefNetwork(IILandroid/os/Message;)V

    goto :goto_2

    .line 797
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # setter for: Lcom/android/settings_ex/sim/SimSettings;->mDataEnable:Z
    invoke-static {v3, v5}, Lcom/android/settings_ex/sim/SimSettings;->access$1502(Lcom/android/settings_ex/sim/SimSettings;Z)Z

    .line 798
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "subIds == null "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 800
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDefaultDataSubId:I
    invoke-static {}, Lcom/android/settings_ex/sim/SimSettings;->access$1300()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # getter for: Lcom/android/settings_ex/sim/SimSettings;->mDataHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/settings_ex/sim/SimSettings;->access$1700(Lcom/android/settings_ex/sim/SimSettings;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/settings_ex/sim/SimSettings;->setPrefNetwork(IILandroid/os/Message;)V

    goto :goto_2

    .line 812
    .end local v1    # "subIds":[I
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v7, "sim_calls"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 814
    const-string v3, "SimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DefVoiceId ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    if-ne v0, v4, :cond_7

    .line 817
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 826
    :cond_6
    :goto_3
    const-string v3, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WIKP] UserVoiceId ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->saveDualSimUserSettings()V
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1800(Lcom/android/settings_ex/sim/SimSettings;)V

    goto/16 :goto_2

    .line 819
    :cond_7
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->setVoicePromptEnabled(Z)V

    .line 820
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v3

    if-eq v3, v0, :cond_6

    .line 821
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    goto :goto_3

    .line 830
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->val$simPref:Lcom/android/settings_ex/notification/DropDownPreference;

    invoke-virtual {v3}, Lcom/android/settings_ex/notification/DropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v7, "sim_sms"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 831
    const-string v3, "SimSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DefSMSId ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-ne v0, v4, :cond_a

    .line 834
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 843
    :cond_9
    :goto_4
    const-string v3, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[WIKP] UserSmsId ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    # invokes: Lcom/android/settings_ex/sim/SimSettings;->saveDualSimUserSettings()V
    invoke-static {v3}, Lcom/android/settings_ex/sim/SimSettings;->access$1800(Lcom/android/settings_ex/sim/SimSettings;)V

    goto/16 :goto_2

    .line 836
    :cond_a
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->setSMSPromptEnabled(Z)V

    .line 837
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v3

    if-eq v3, v0, :cond_9

    .line 838
    iget-object v3, p0, Lcom/android/settings_ex/sim/SimSettings$5;->this$0:Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    goto :goto_4
.end method
