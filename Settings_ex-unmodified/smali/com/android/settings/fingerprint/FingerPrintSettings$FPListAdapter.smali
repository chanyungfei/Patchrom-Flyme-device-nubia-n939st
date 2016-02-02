.class Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FingerPrintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerPrintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FPListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mData:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerPrintSettings;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # [Ljava/lang/String;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;->this$0:Lcom/android/settings/fingerprint/FingerPrintSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1055
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1056
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;->mData:[Ljava/lang/String;

    .line 1057
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;->mData:[Ljava/lang/String;

    aget-object v2, p3, v0

    aput-object v2, v1, v0

    .line 1057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;->mData:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1074
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1080
    if-nez p2, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1082
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;-><init>(Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;)V

    .line 1083
    .local v0, "holder":Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 1084
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1089
    :goto_0
    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;->mData:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter;->mData:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1092
    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1097
    :goto_1
    return-object p2

    .line 1086
    .end local v0    # "holder":Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;
    goto :goto_0

    .line 1094
    :cond_1
    iget-object v1, v0, Lcom/android/settings/fingerprint/FingerPrintSettings$FPListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method
