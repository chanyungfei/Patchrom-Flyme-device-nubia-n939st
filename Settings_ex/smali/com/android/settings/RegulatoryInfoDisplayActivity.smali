.class public Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;
.super Landroid/app/Activity;
.source "RegulatoryInfoDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final REGULATORY_INFO_RESOURCE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "regulatory_info"

    iput-object v0, p0, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->REGULATORY_INFO_RESOURCE:Ljava/lang/String;

    return-void
.end method

.method private getResourceId()I
    .locals 8

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "regulatory_info"

    const-string v6, "drawable"

    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, "resId":I
    const-string v4, "ro.boot.hardware.sku"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "sku":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "regulatory_info_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "regulatory_info_res":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 118
    move v2, v0

    .line 121
    .end local v0    # "id":I
    .end local v1    # "regulatory_info_res":Ljava/lang/String;
    :cond_0
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 54
    .local v10, "resources":Landroid/content/res/Resources;
    const v12, 0x7f0c002a

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 57
    .local v5, "isShowRegulatoryByProp":Z
    if-nez v5, :cond_0

    const v12, 0x7f0c0007

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->finish()V

    .line 62
    :cond_0
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f09059d

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 66
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v7, 0x0

    .line 67
    .local v7, "regulatoryInfoDrawableExists":Z
    invoke-direct {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getResourceId()I

    move-result v9

    .line 68
    .local v9, "resId":I
    if-eqz v9, :cond_1

    .line 70
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_2

    const/4 v7, 0x1

    .line 80
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    const-string v8, ""

    .line 81
    .local v8, "regulatoryText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 82
    const v12, 0x7f0900ce

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 88
    :goto_1
    if-eqz v7, :cond_4

    if-nez v5, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0400cd

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 90
    .local v11, "view":Landroid/view/View;
    const v12, 0x7f0f01d0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 91
    .local v4, "image":Landroid/widget/ImageView;
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 104
    .end local v4    # "image":Landroid/widget/ImageView;
    .end local v11    # "view":Landroid/view/View;
    :goto_2
    return-void

    .line 73
    .end local v8    # "regulatoryText":Ljava/lang/CharSequence;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 75
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 76
    .local v3, "ignored":Landroid/content/res/Resources$NotFoundException;
    const/4 v7, 0x0

    goto :goto_0

    .line 84
    .end local v3    # "ignored":Landroid/content/res/Resources$NotFoundException;
    .restart local v8    # "regulatoryText":Ljava/lang/CharSequence;
    :cond_3
    const v12, 0x7f090a4b

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_1

    .line 94
    :cond_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 95
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 98
    .local v2, "dialog":Landroid/app/AlertDialog;
    const v12, 0x102000b

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 99
    .local v6, "messageText":Landroid/widget/TextView;
    const/16 v12, 0x11

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 102
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    .end local v6    # "messageText":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->finish()V

    goto :goto_2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/RegulatoryInfoDisplayActivity;->finish()V

    .line 127
    return-void
.end method
