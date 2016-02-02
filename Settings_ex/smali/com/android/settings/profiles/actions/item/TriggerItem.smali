.class public Lcom/android/settings_ex/profiles/actions/item/TriggerItem;
.super Ljava/lang/Object;
.source "TriggerItem.java"

# interfaces
.implements Lcom/android/settings_ex/profiles/actions/item/Item;


# instance fields
.field mProfile:Landroid/app/Profile;

.field mTriggerType:I


# direct methods
.method public static getTitleString(I)I
    .locals 1
    .param p0, "triggerType"    # I

    .prologue
    .line 98
    packed-switch p0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    const v0, 0x7f0900b3

    goto :goto_0

    .line 102
    :pswitch_1
    const v0, 0x7f0900b4

    goto :goto_0

    .line 104
    :pswitch_2
    const v0, 0x7f0900b5

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getRowType()Lcom/android/settings_ex/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/settings_ex/profiles/actions/ItemListAdapter$RowType;->TRIGGER_ITEM:Lcom/android/settings_ex/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getTriggerType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/profiles/actions/item/TriggerItem;->mTriggerType:I

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    if-nez p2, :cond_1

    .line 63
    const v6, 0x7f04006e

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 69
    .local v5, "view":Landroid/view/View;
    :goto_0
    const v6, 0x7f0f0005

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    .local v3, "text":Landroid/widget/TextView;
    iget v6, p0, Lcom/android/settings_ex/profiles/actions/item/TriggerItem;->mTriggerType:I

    invoke-static {v6}, Lcom/android/settings_ex/profiles/actions/item/TriggerItem;->getTitleString(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/settings_ex/profiles/actions/item/TriggerItem;->mProfile:Landroid/app/Profile;

    iget v7, p0, Lcom/android/settings_ex/profiles/actions/item/TriggerItem;->mTriggerType:I

    invoke-virtual {v6, v7}, Landroid/app/Profile;->getTriggersFromType(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 76
    .local v4, "triggers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Profile$ProfileTrigger;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 77
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Profile$ProfileTrigger;

    invoke-virtual {v6}, Landroid/app/Profile$ProfileTrigger;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 79
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "text":Landroid/widget/TextView;
    .end local v4    # "triggers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Profile$ProfileTrigger;>;"
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    move-object v5, p2

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_0

    .line 83
    .restart local v1    # "i":I
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "text":Landroid/widget/TextView;
    .restart local v4    # "triggers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Profile$ProfileTrigger;>;"
    :cond_2
    const v6, 0x7f0f004e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, "desc":Landroid/widget/TextView;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 85
    iget v6, p0, Lcom/android/settings_ex/profiles/actions/item/TriggerItem;->mTriggerType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 86
    const v6, 0x7f0900be

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 94
    :goto_2
    return-object v5

    .line 88
    :cond_3
    const v6, 0x7f0900bd

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 91
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method
