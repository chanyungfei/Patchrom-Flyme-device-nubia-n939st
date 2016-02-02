.class public Lcom/android/settings_ex/profiles/actions/item/RingModeItem;
.super Ljava/lang/Object;
.source "RingModeItem.java"

# interfaces
.implements Lcom/android/settings_ex/profiles/actions/item/Item;


# instance fields
.field mSettings:Landroid/app/RingModeSettings;


# direct methods
.method public constructor <init>(Landroid/app/RingModeSettings;)V
    .locals 0
    .param p1, "ringModeSettings"    # Landroid/app/RingModeSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance p1, Landroid/app/RingModeSettings;

    .end local p1    # "ringModeSettings":Landroid/app/RingModeSettings;
    invoke-direct {p1}, Landroid/app/RingModeSettings;-><init>()V

    .line 37
    .restart local p1    # "ringModeSettings":Landroid/app/RingModeSettings;
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/profiles/actions/item/RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    .line 38
    return-void
.end method

.method public static getModeString(Landroid/app/RingModeSettings;)I
    .locals 3
    .param p0, "settings"    # Landroid/app/RingModeSettings;

    .prologue
    const v0, 0x7f090003

    .line 70
    if-nez p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroid/app/RingModeSettings;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {p0}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const v0, 0x7f090004

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Landroid/app/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const v0, 0x7f090005

    goto :goto_0

    .line 82
    :cond_3
    const v0, 0x7f090006

    goto :goto_0
.end method


# virtual methods
.method public getRowType()Lcom/android/settings_ex/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings_ex/profiles/actions/ItemListAdapter$RowType;->RINGMODE_ITEM:Lcom/android/settings_ex/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Landroid/app/RingModeSettings;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/profiles/actions/item/RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    const v3, 0x7f04006e

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f0f0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f090002

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v3, 0x7f0f004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/profiles/actions/item/RingModeItem;->mSettings:Landroid/app/RingModeSettings;

    invoke-static {v3}, Lcom/android/settings_ex/profiles/actions/item/RingModeItem;->getModeString(Landroid/app/RingModeSettings;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 66
    return-object v2

    .line 57
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "text":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
