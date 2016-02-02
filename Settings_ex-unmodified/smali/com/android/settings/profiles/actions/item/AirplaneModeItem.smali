.class public Lcom/android/settings/profiles/actions/item/AirplaneModeItem;
.super Ljava/lang/Object;
.source "AirplaneModeItem.java"

# interfaces
.implements Lcom/android/settings/profiles/actions/item/Item;


# instance fields
.field mSettings:Landroid/app/AirplaneModeSettings;


# direct methods
.method public constructor <init>(Landroid/app/AirplaneModeSettings;)V
    .locals 0
    .param p1, "airplaneModeSettings"    # Landroid/app/AirplaneModeSettings;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance p1, Landroid/app/AirplaneModeSettings;

    .end local p1    # "airplaneModeSettings":Landroid/app/AirplaneModeSettings;
    invoke-direct {p1}, Landroid/app/AirplaneModeSettings;-><init>()V

    .line 34
    .restart local p1    # "airplaneModeSettings":Landroid/app/AirplaneModeSettings;
    :cond_0
    iput-object p1, p0, Lcom/android/settings/profiles/actions/item/AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    .line 35
    return-void
.end method

.method public static getModeString(Landroid/app/AirplaneModeSettings;)I
    .locals 2
    .param p0, "settings"    # Landroid/app/AirplaneModeSettings;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/app/AirplaneModeSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Landroid/app/AirplaneModeSettings;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 73
    const v0, 0x7f0900b0

    .line 78
    :goto_0
    return v0

    .line 75
    :cond_0
    const v0, 0x7f0900af

    goto :goto_0

    .line 78
    :cond_1
    const v0, 0x7f0900ae

    goto :goto_0
.end method


# virtual methods
.method public getRowType()Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->AIRPLANEMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Landroid/app/AirplaneModeSettings;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/profiles/actions/item/AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    return-object v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    const v3, 0x7f04006e

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f0f0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f090058

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 60
    const v3, 0x7f0f004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/profiles/actions/item/AirplaneModeItem;->mSettings:Landroid/app/AirplaneModeSettings;

    invoke-static {v3}, Lcom/android/settings/profiles/actions/item/AirplaneModeItem;->getModeString(Landroid/app/AirplaneModeSettings;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 63
    return-object v2

    .line 54
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
    .line 44
    const/4 v0, 0x1

    return v0
.end method
