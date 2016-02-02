.class public Lcom/android/settings/CleanData;
.super Landroid/app/Activity;
.source "CleanData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCancle:Landroid/widget/Button;

.field private mCheckBox:Landroid/widget/CheckBox;

.field sdcardPathc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/CleanData;->sdcardPathc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 70
    const v2, 0x7f0f004c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/CleanData;->finish()V

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/SdupdateActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, "mIntentScan1":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "bundlec":Landroid/os/Bundle;
    const-string v2, "SDcard"

    iget-object v3, p0, Lcom/android/settings/CleanData;->sdcardPathc:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/settings/CleanData;->startActivity(Landroid/content/Intent;)V

    .line 82
    .end local v0    # "bundlec":Landroid/os/Bundle;
    .end local v1    # "mIntentScan1":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/settings/CleanData;->setContentView(I)V

    .line 40
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lcom/android/settings/CleanData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CleanData;->mCancle:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/android/settings/CleanData;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/CleanData;->mCheckBox:Landroid/widget/CheckBox;

    .line 46
    iget-object v0, p0, Lcom/android/settings/CleanData;->mCancle:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-string v0, "wangjiaying "

    const-string v1, "wangjiaying 002 cleandata oncreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/settings/CleanData;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings/CleanData$1;

    invoke-direct {v1, p0}, Lcom/android/settings/CleanData$1;-><init>(Lcom/android/settings/CleanData;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    invoke-static {p0}, Lcom/android/settings/SDcardUpgrade;->getSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CleanData;->sdcardPathc:Ljava/lang/String;

    .line 65
    return-void
.end method
