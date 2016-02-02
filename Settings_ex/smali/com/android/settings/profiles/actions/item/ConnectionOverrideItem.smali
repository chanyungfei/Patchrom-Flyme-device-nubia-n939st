.class public Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;
.super Ljava/lang/Object;
.source "ConnectionOverrideItem.java"

# interfaces
.implements Lcom/android/settings_ex/profiles/actions/item/Item;


# instance fields
.field mConnectionId:I

.field mConnectionSettings:Landroid/app/ConnectionSettings;


# direct methods
.method public constructor <init>(ILandroid/app/ConnectionSettings;)V
    .locals 0
    .param p1, "connectionId"    # I
    .param p2, "settings"    # Landroid/app/ConnectionSettings;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    .line 40
    if-nez p2, :cond_0

    .line 41
    new-instance p2, Landroid/app/ConnectionSettings;

    .end local p2    # "settings":Landroid/app/ConnectionSettings;
    invoke-direct {p2, p1}, Landroid/app/ConnectionSettings;-><init>(I)V

    .line 43
    .restart local p2    # "settings":Landroid/app/ConnectionSettings;
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Landroid/app/ConnectionSettings;

    .line 44
    return-void
.end method

.method public static getConnectionTitle(I)I
    .locals 1
    .param p0, "connectionId"    # I

    .prologue
    .line 76
    packed-switch p0, :pswitch_data_0

    .line 94
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 78
    :pswitch_1
    const v0, 0x7f09005b

    goto :goto_0

    .line 80
    :pswitch_2
    const v0, 0x7f09005d

    goto :goto_0

    .line 82
    :pswitch_3
    const v0, 0x7f090060

    goto :goto_0

    .line 84
    :pswitch_4
    const v0, 0x7f09005c

    goto :goto_0

    .line 86
    :pswitch_5
    const v0, 0x7f090062

    goto :goto_0

    .line 88
    :pswitch_6
    const v0, 0x7f09005e

    goto :goto_0

    .line 90
    :pswitch_7
    const v0, 0x7f090059

    goto :goto_0

    .line 92
    :pswitch_8
    const v0, 0x7f09005a

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getConnectionType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    return v0
.end method

.method public getRowType()Lcom/android/settings_ex/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings_ex/profiles/actions/ItemListAdapter$RowType;->CONNECTION_ITEM:Lcom/android/settings_ex/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Landroid/app/ConnectionSettings;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Landroid/app/ConnectionSettings;

    return-object v0
.end method

.method public getSummary()I
    .locals 3

    .prologue
    const v0, 0x7f0900ae

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Landroid/app/ConnectionSettings;

    if-eqz v1, :cond_0

    .line 100
    iget v1, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    const v0, 0x7f090031

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 104
    :pswitch_0
    const v0, 0x7f09002d

    goto :goto_0

    .line 106
    :pswitch_1
    const v0, 0x7f09002e

    goto :goto_0

    .line 108
    :pswitch_2
    const v0, 0x7f09002f

    goto :goto_0

    .line 110
    :pswitch_3
    const v0, 0x7f090030

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionSettings:Landroid/app/ConnectionSettings;

    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->getValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 120
    const v0, 0x7f0900b0

    goto :goto_0

    .line 122
    :cond_2
    const v0, 0x7f0900af

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    const v3, 0x7f04006e

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "view":Landroid/view/View;
    :goto_0
    const v3, 0x7f0f0005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, "title":Landroid/widget/TextView;
    const v3, 0x7f0f004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "summary":Landroid/widget/TextView;
    iget v3, p0, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->mConnectionId:I

    invoke-static {v3}, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/profiles/actions/item/ConnectionOverrideItem;->getSummary()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 67
    return-object v2

    .line 58
    .end local v0    # "summary":Landroid/widget/TextView;
    .end local v1    # "title":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method
