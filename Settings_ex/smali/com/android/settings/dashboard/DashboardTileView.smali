.class public Lcom/android/settings_ex/dashboard/DashboardTileView;
.super Landroid/widget/FrameLayout;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mColSpan:I

.field private mDivider:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasSwitch"    # Z

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;ZLandroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasSwitch"    # Z
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x7f0f0084

    const v5, 0x7f0f0005

    const v4, 0x7f0f0003

    const/4 v3, 0x1

    .line 50
    invoke-direct {p0, p1, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v3, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040039

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0f001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    .line 58
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    .line 69
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f020026

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setFocusable(Z)V

    .line 73
    return-void

    .line 61
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040038

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0f0021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    .line 66
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method getColumnSpan()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mColSpan:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSwitch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/settings_ex/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget v5, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->titleRes:I

    iget-object v6, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/settings_ex/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b39

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    move v4, v0

    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090b3a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_1
.end method

.method public setDividerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void

    .line 96
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V
    .locals 0
    .param p1, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardTileView;->mTile:Lcom/android/settings_ex/dashboard/DashboardTile;

    .line 93
    return-void
.end method
