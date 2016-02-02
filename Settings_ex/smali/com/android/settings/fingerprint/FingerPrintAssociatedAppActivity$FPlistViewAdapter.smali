.class public Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "FingerPrintAssociatedAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FPlistViewAdapter"
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;)V
    .locals 1

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 368
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 370
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 375
    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    :cond_0
    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 386
    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 390
    :goto_0
    return-object v0

    :cond_0
    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 397
    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-wide/16 v0, 0x0

    .line 401
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 408
    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$700()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    const/4 v5, 0x0

    .line 429
    :goto_0
    return-object v5

    .line 412
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040070

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 414
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0f0112

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 415
    .local v2, "fingprintName":Landroid/widget/TextView;
    const v6, 0x7f0f0113

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 416
    .local v4, "packageName":Landroid/widget/TextView;
    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$700()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 417
    .local v3, "fpName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    invoke-static {v6, v3}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->getAssociateApplicationStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 420
    .local v1, "associatedState":Z
    if-eqz v1, :cond_1

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppPackageArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$800()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 421
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v6, p0, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;->this$0:Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->pManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$900(Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;)Landroid/content/pm/PackageManager;

    move-result-object v8

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppPackageArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$800()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    # getter for: Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppClassArray:Ljava/util/ArrayList;
    invoke-static {}, Lcom/android/settings_ex/fingerprint/FingerPrintAssociatedAppActivity;->access$1000()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v6, v7}, Lcom/android/settings_ex/fingerprint/FingerPrintUtils;->getAppLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "appLabel":Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 426
    .end local v0    # "appLabel":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
