.class public Lcom/android/settings/profiles/actions/item/VolumeStreamItem;
.super Ljava/lang/Object;
.source "VolumeStreamItem.java"

# interfaces
.implements Lcom/android/settings/profiles/actions/item/Item;


# instance fields
.field private mStreamId:I

.field private mStreamSettings:Landroid/app/StreamSettings;


# direct methods
.method public constructor <init>(ILandroid/app/StreamSettings;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamSettings"    # Landroid/app/StreamSettings;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    .line 35
    iput-object p2, p0, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Landroid/app/StreamSettings;

    .line 36
    return-void
.end method

.method public static getNameForStream(I)I
    .locals 1
    .param p0, "stream"    # I

    .prologue
    .line 78
    packed-switch p0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 80
    :pswitch_0
    const v0, 0x7f0903f8

    goto :goto_0

    .line 82
    :pswitch_1
    const v0, 0x7f0903f6

    goto :goto_0

    .line 84
    :pswitch_2
    const v0, 0x7f0903f1

    goto :goto_0

    .line 86
    :pswitch_3
    const v0, 0x7f0903f2

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getRowType()Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->VOLUME_STREAM_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public getSettings()Landroid/app/StreamSettings;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Landroid/app/StreamSettings;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    return v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v11, 0x0

    .line 51
    if-nez p2, :cond_0

    .line 52
    const v7, 0x7f04006e

    invoke-virtual {p1, v7, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 58
    .local v6, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, "context":Landroid/content/Context;
    const-string v7, "audio"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 61
    .local v0, "am":Landroid/media/AudioManager;
    const v7, 0x7f0f0005

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 62
    .local v5, "text":Landroid/widget/TextView;
    iget v7, p0, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    invoke-static {v7}, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->getNameForStream(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 64
    const v7, 0x7f0f004e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, "desc":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Landroid/app/StreamSettings;

    invoke-virtual {v7}, Landroid/app/StreamSettings;->getValue()I

    move-result v2

    .line 66
    .local v2, "denominator":I
    iget v7, p0, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->mStreamId:I

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 67
    .local v4, "numerator":I
    iget-object v7, p0, Lcom/android/settings/profiles/actions/item/VolumeStreamItem;->mStreamSettings:Landroid/app/StreamSettings;

    invoke-virtual {v7}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090036

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_1
    return-object v6

    .line 55
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "denominator":I
    .end local v3    # "desc":Landroid/widget/TextView;
    .end local v4    # "numerator":I
    .end local v5    # "text":Landroid/widget/TextView;
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    move-object v6, p2

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0

    .line 71
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "denominator":I
    .restart local v3    # "desc":Landroid/widget/TextView;
    .restart local v4    # "numerator":I
    .restart local v5    # "text":Landroid/widget/TextView;
    :cond_1
    const v7, 0x7f090037

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
