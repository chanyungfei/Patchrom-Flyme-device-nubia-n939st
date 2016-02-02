.class public Lcom/android/settings/MultiSimSettingTab;
.super Landroid/app/TabActivity;
.source "MultiSimSettingTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backBtn:Landroid/widget/ImageView;

.field private tabIcons:[I

.field private tabSpecTags:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 65
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MultiSimSettingTab;->backBtn:Landroid/widget/ImageView;

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/MultiSimSettingTab;->tabIcons:[I

    .line 77
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sim1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sim2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/MultiSimSettingTab;->tabSpecTags:[Ljava/lang/String;

    return-void

    .line 73
    nop

    :array_0
    .array-data 4
        0x7f0200d9
        0x7f0200da
    .end array-data
.end method

.method public static findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 156
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 159
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 160
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 162
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 163
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 164
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 170
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 162
    .restart local v0    # "availableSubInfoLength":I
    .restart local v1    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subscription"    # I

    .prologue
    .line 141
    invoke-static {p0, p1}, Lcom/android/settings/MultiSimSettingTab;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 143
    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a58

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, "MultiSimSettingWidget"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettingTab;->finish()V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x7f0f0134
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-string v10, "Creating activity"

    invoke-static {v10}, Lcom/android/settings/MultiSimSettingTab;->logd(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettingTab;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 90
    .local v5, "preIntent":Landroid/content/Intent;
    const-string v10, "Title"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "title":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const v10, 0x7f09047b

    invoke-virtual {p0, v10}, Lcom/android/settings/MultiSimSettingTab;->getString(I)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/settings/MultiSimSettingTab;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/settings/MultiSimSettingTab;->requestWindowFeature(I)Z

    .line 95
    const v10, 0x7f040083

    invoke-virtual {p0, v10}, Lcom/android/settings/MultiSimSettingTab;->setContentView(I)V

    .line 97
    const v10, 0x7f0f0134

    invoke-virtual {p0, v10}, Lcom/android/settings/MultiSimSettingTab;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/settings/MultiSimSettingTab;->backBtn:Landroid/widget/ImageView;

    .line 98
    iget-object v10, p0, Lcom/android/settings/MultiSimSettingTab;->backBtn:Landroid/widget/ImageView;

    invoke-virtual {v10, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 103
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettingTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v8

    .line 109
    .local v8, "tabHost":Landroid/widget/TabHost;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 110
    const-string v10, "PACKAGE"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "packageName":Ljava/lang/String;
    const-string v10, "TARGET_CLASS"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "className":Ljava/lang/String;
    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    .line 115
    :cond_1
    const-string v10, "MultiSimSettingWidget"

    const-string v11, "Enter into MultiSimSettingTab with null packageName or className"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_1
    return-void

    .line 120
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_2
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "subscription"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 123
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/settings/MultiSimSettingTab;->tabSpecTags:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-static {p0, v2}, Lcom/android/settings/MultiSimSettingTab;->getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/MultiSimSettingTab;->tabIcons:[I

    aget v12, v12, v2

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 127
    .local v7, "spec":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v8, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettingTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, "TempsimName":Landroid/widget/TextView;
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "TempsimName":Landroid/widget/TextView;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v7    # "spec":Landroid/widget/TabHost$TabSpec;
    :cond_3
    const-string v10, "subscription"

    invoke-virtual {v5, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 183
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings/MultiSimSettingTab;->finish()V

    .line 177
    const/4 v0, 0x1

    return v0
.end method
