.class public Lcom/android/settings_ex/dashboard/DashboardSummary;
.super Landroid/app/Fragment;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;
    }
.end annotation


# instance fields
.field private mDashboard:Landroid/view/ViewGroup;

.field private mDataEnabler:Lcom/android/settings_ex/DataEnabler;

.field private mHandler:Landroid/os/Handler;

.field private mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/DashboardSummary$1;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/dashboard/DashboardSummary$2;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings_ex/dashboard/DashboardSummary;Lcom/android/settings_ex/dashboard/DashboardSummary$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/dashboard/DashboardSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dashboard/DashboardSummary;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->sendRebuildUI()V

    return-void
.end method

.method private rebuildUI(Landroid/content/Context;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    const-string v2, "DashboardSummary"

    const-string v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 157
    .local v24, "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 159
    .local v4, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 161
    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/SettingsActivity;->getDashboardCategories(Z)Ljava/util/List;

    move-result-object v9

    .line 164
    .local v9, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/dashboard/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    .line 166
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "n":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_9

    .line 167
    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_ex/dashboard/DashboardCategory;

    .line 169
    .local v10, "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040037

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 172
    .local v13, "categoryView":Landroid/view/View;
    const v2, 0x7f0f0082

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 173
    .local v12, "categoryLabel":Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v2, 0x7f0f0083

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 178
    .local v11, "categoryContent":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTilesCount()I

    move-result v26

    .line 179
    .local v26, "tilesCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 180
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/settings_ex/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings_ex/dashboard/DashboardTile;

    move-result-object v5

    .line 182
    .local v5, "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    invoke-virtual {v5, v4}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f090b39

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    new-instance v23, Lcom/android/settings_ex/dashboard/DashboardTileView;

    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Z)V

    .line 184
    .local v23, "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/Lte4GEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 186
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v20

    .line 187
    .local v20, "simState":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x5

    move/from16 v0, v20

    if-ne v0, v2, :cond_1

    const/4 v15, 0x1

    .line 190
    .local v15, "enabled":Z
    :goto_3
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setEnabled(Z)V

    .line 191
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 193
    if-eqz v15, :cond_2

    .line 194
    const v2, 0x7f020094

    iput v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    .line 199
    :goto_4
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Switch;)V

    .line 232
    .end local v15    # "enabled":Z
    .end local v20    # "simState":I
    :goto_5
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setTile(Lcom/android/settings_ex/dashboard/DashboardTile;)V

    .line 234
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 187
    .restart local v20    # "simState":I
    :cond_1
    const/4 v15, 0x0

    goto :goto_3

    .line 196
    .restart local v15    # "enabled":Z
    :cond_2
    const v2, 0x7f020095

    iput v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    goto :goto_4

    .line 202
    .end local v15    # "enabled":Z
    .end local v20    # "simState":I
    .end local v23    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    :cond_3
    invoke-virtual {v5, v4}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f090b3a

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 203
    new-instance v23, Lcom/android/settings_ex/dashboard/DashboardTileView;

    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Z)V

    .line 204
    .restart local v23    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDataEnabler:Lcom/android/settings_ex/DataEnabler;

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/DataEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 207
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v21

    .line 208
    .local v21, "simState1":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v22

    .line 209
    .local v22, "simState2":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    move/from16 v0, v21

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    move/from16 v0, v22

    if-ne v0, v2, :cond_5

    :cond_4
    const/4 v15, 0x1

    .line 213
    .restart local v15    # "enabled":Z
    :goto_6
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/dashboard/DashboardTileView;->setEnabled(Z)V

    .line 214
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 216
    if-eqz v15, :cond_6

    .line 217
    const v2, 0x7f0200a0

    iput v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    .line 222
    :goto_7
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getSwitch()Landroid/widget/Switch;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Switch;)V

    goto/16 :goto_5

    .line 209
    .end local v15    # "enabled":Z
    :cond_5
    const/4 v15, 0x0

    goto :goto_6

    .line 219
    .restart local v15    # "enabled":Z
    :cond_6
    const v2, 0x7f0200a1

    iput v2, v5, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    goto :goto_7

    .line 227
    .end local v15    # "enabled":Z
    .end local v21    # "simState1":I
    .end local v22    # "simState2":I
    .end local v23    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    :cond_7
    new-instance v23, Lcom/android/settings_ex/dashboard/DashboardTileView;

    const/4 v2, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/dashboard/DashboardTileView;-><init>(Landroid/content/Context;Z)V

    .line 228
    .restart local v23    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v23 .. v23}, Lcom/android/settings_ex/dashboard/DashboardTileView;->getStatusTextView()Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ex/dashboard/DashboardSummary;->updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 238
    .end local v5    # "tile":Lcom/android/settings_ex/dashboard/DashboardTile;
    .end local v23    # "tileView":Lcom/android/settings_ex/dashboard/DashboardTileView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 240
    .end local v10    # "category":Lcom/android/settings_ex/dashboard/DashboardCategory;
    .end local v11    # "categoryContent":Landroid/view/ViewGroup;
    .end local v12    # "categoryLabel":Landroid/widget/TextView;
    .end local v13    # "categoryView":Landroid/view/View;
    .end local v18    # "i":I
    .end local v26    # "tilesCount":I
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v16, v2, v24

    .line 241
    .local v16, "delta":J
    const-string v2, "DashboardSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendRebuildUI()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 279
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    :cond_0
    return-void
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "mSwitch"    # Landroid/widget/Switch;

    .prologue
    const/4 v1, 0x0

    .line 268
    iget v0, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    if-lez v0, :cond_0

    .line 269
    iget v0, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    return-void

    .line 271
    :cond_0
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTileView(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ex/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "tile"    # Lcom/android/settings_ex/dashboard/DashboardTile;
    .param p4, "tileIcon"    # Landroid/widget/ImageView;
    .param p5, "tileTextView"    # Landroid/widget/TextView;
    .param p6, "statusTextView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 247
    iget v1, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    if-lez v1, :cond_0

    .line 248
    iget v1, p3, Lcom/android/settings_ex/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p3, p2}, Lcom/android/settings_ex/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 257
    .local v0, "summary":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :goto_1
    return-void

    .line 250
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 261
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 140
    new-instance v1, Lcom/android/settings_ex/Lte4GEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/Lte4GEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

    .line 142
    new-instance v1, Lcom/android/settings_ex/DataEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/DataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDataEnabler:Lcom/android/settings_ex/DataEnabler;

    .line 144
    const v1, 0x7f040036

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0f0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDashboard:Landroid/view/ViewGroup;

    .line 147
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDataEnabler:Lcom/android/settings_ex/DataEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataEnabler;->destroy()V

    .line 134
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/Lte4GEnabler;->pause()V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDataEnabler:Lcom/android/settings_ex/DataEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataEnabler;->pause()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 97
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mLte4GEnabler:Lcom/android/settings_ex/Lte4GEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/Lte4GEnabler;->resume()V

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mDataEnabler:Lcom/android/settings_ex/DataEnabler;

    invoke-virtual {v2}, Lcom/android/settings_ex/DataEnabler;->resume()V

    .line 101
    invoke-direct {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->sendRebuildUI()V

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mHomePackageReceiver:Lcom/android/settings_ex/dashboard/DashboardSummary$HomePackageReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/dashboard/DashboardSummary;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method
