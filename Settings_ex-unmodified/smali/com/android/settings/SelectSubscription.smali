.class public Lcom/android/settings/SelectSubscription;
.super Landroid/app/TabActivity;
.source "SelectSubscription.java"


# instance fields
.field private subscriptionPref:Landroid/widget/TabHost$TabSpec;

.field private tabLabel:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "SelectSubscription"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method


# virtual methods
.method public getOperatorName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "operatorName"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 126
    if-eqz p1, :cond_0

    const-string v0, "Mobile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b3c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "Unicom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b3d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "Telecom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090b3e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0
.end method

.method public getOperatorName2(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "operatorName"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 138
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "operatorName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bc0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "mobileOperator":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bc1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "unicomOperator":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bc2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "telecomOperator":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b3c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    :goto_0
    return-object v3

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b3d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 146
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b3e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v3, v3, p2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v9, "Creating activity"

    invoke-static {v9}, Lcom/android/settings/SelectSubscription;->log(Ljava/lang/String;)V

    .line 85
    const v9, 0x7f0400e0

    invoke-virtual {p0, v9}, Lcom/android/settings/SelectSubscription;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0080

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    .line 90
    .local v7, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {p0}, Lcom/android/settings/SelectSubscription;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 91
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "PACKAGE"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "pkg":Ljava/lang/String;
    const-string v9, "TARGET_CLASS"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "targetClass":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 96
    .local v4, "numPhones":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 97
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 101
    .local v6, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "defultLanguage":Ljava/lang/String;
    const-string v9, "zh"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 103
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v2}, Lcom/android/settings/SelectSubscription;->getOperatorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "displayName":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Creating SelectSub activity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " displayName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/SelectSubscription;->log(Ljava/lang/String;)V

    .line 111
    iget-object v9, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v7, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    .line 112
    iget-object v9, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v9, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 114
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v5, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 117
    invoke-static {v3, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 118
    iget-object v9, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v9, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 119
    iget-object v9, p0, Lcom/android/settings/SelectSubscription;->subscriptionPref:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v7, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v1, v9, v2

    goto :goto_1

    .line 105
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v2}, Lcom/android/settings/SelectSubscription;->getOperatorName2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "displayName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v1    # "displayName":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SelectSubscription;->tabLabel:[Ljava/lang/String;

    aget-object v1, v9, v2

    goto :goto_2

    .line 121
    .end local v0    # "defultLanguage":Ljava/lang/String;
    .end local v6    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 157
    return-void
.end method
