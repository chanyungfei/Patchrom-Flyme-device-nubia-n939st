.class public Lcom/android/settings/CustomScreenColor;
.super Landroid/app/Activity;
.source "CustomScreenColor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomScreenColor$1;,
        Lcom/android/settings/CustomScreenColor$MyMenuItemclick;,
        Lcom/android/settings/CustomScreenColor$PPServiceConnection;
    }
.end annotation


# instance fields
.field private canRestorePreview:Z

.field private mCBar:Landroid/widget/SeekBar;

.field private mCTv:Landroid/widget/TextView;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContrastValue:I

.field private mDefaultContrastValue:I

.field private mDefaultHueValue:I

.field private mDefaultIntensityValue:I

.field private mDefaultSaturationValue:I

.field private mHBar:Landroid/widget/SeekBar;

.field private mHTv:Landroid/widget/TextView;

.field private mHueValue:I

.field private mIBar:Landroid/widget/SeekBar;

.field private mITv:Landroid/widget/TextView;

.field private mIncreaseC:Landroid/widget/ImageView;

.field private mIncreaseH:Landroid/widget/ImageView;

.field private mIncreaseI:Landroid/widget/ImageView;

.field private mIncreaseS:Landroid/widget/ImageView;

.field private mIntensityValue:I

.field private mMaxContrastValue:I

.field private mMaxHueValue:I

.field private mMaxIntensityValue:I

.field private mMaxSaturationValue:I

.field private mMinContrastValue:I

.field private mMinHueValue:I

.field private mMinIntensityValue:I

.field private mMinSaturationValue:I

.field private mMore:Landroid/widget/ImageView;

.field private mNewBtn:Landroid/widget/Button;

.field mPPService:Lcom/android/display/IPPService;

.field mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

.field private mPreviousBtn:Landroid/widget/Button;

.field private mRLayout:Landroid/widget/RelativeLayout;

.field private mReduceC:Landroid/widget/ImageView;

.field private mReduceH:Landroid/widget/ImageView;

.field private mReduceI:Landroid/widget/ImageView;

.field private mReduceS:Landroid/widget/ImageView;

.field private mSBar:Landroid/widget/SeekBar;

.field private mSTv:Landroid/widget/TextView;

.field private mSaturationValue:I

.field private mSaveBtn:Landroid/widget/Button;

.field private mScreenColorLayout:Landroid/widget/LinearLayout;

.field private mUpdown:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    .line 112
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    .line 113
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    .line 114
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    .line 116
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMinHueValue:I

    .line 117
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    .line 118
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mDefaultHueValue:I

    .line 119
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMinSaturationValue:I

    .line 120
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    .line 121
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mDefaultSaturationValue:I

    .line 122
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMinIntensityValue:I

    .line 123
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    .line 124
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mDefaultIntensityValue:I

    .line 125
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMinContrastValue:I

    .line 126
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    .line 127
    iput v0, p0, Lcom/android/settings/CustomScreenColor;->mDefaultContrastValue:I

    .line 132
    iput-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    .line 133
    iput-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    .line 672
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/CustomScreenColor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CustomScreenColor;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/CustomScreenColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CustomScreenColor;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->resotreBackgroundByDefault()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/CustomScreenColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CustomScreenColor;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->selectPicFromGallery2()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/CustomScreenColor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CustomScreenColor;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->restoreDefaultHSCI()V

    return-void
.end method

.method private changePreviewByData(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 596
    if-eqz p1, :cond_0

    .line 597
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 598
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/settings/CustomScreenColor;->setBackgroundByUri(Landroid/net/Uri;)V

    .line 599
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/CustomScreenColor;->savePreviewKey(Ljava/lang/String;)V

    .line 601
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private getScreenColorPreviewKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 641
    const-string v1, "screencolor_preview_name"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 643
    .local v0, "share":Landroid/content/SharedPreferences;
    const-string v1, "screencolor_preview_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initBtnsStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 562
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 567
    return-void
.end method

.method private initPPService()V
    .locals 4

    .prologue
    .line 250
    new-instance v2, Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/CustomScreenColor$PPServiceConnection;-><init>(Lcom/android/settings/CustomScreenColor;Lcom/android/settings/CustomScreenColor$1;)V

    iput-object v2, p0, Lcom/android/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/display/IPPService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.qualcomm.display"

    const-string v3, "com.qualcomm.display.PPService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/CustomScreenColor;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 254
    .local v1, "ret":Z
    return-void
.end method

.method private initView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 165
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMinHueValue:I

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mDefaultHueValue:I

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMinSaturationValue:I

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mDefaultSaturationValue:I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMinIntensityValue:I

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mDefaultIntensityValue:I

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMinContrastValue:I

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/CustomScreenColor;->mDefaultContrastValue:I

    .line 180
    const v3, 0x7f0f0063

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    .line 181
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->getScreenColorPreviewKey()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "previewContent":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->resotreBackgroundByDefault()V

    .line 189
    :goto_0
    const v3, 0x7f0f006d

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    .line 190
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f08003a

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 191
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v3, 0x7f0f0071

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    .line 194
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 195
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 196
    const v3, 0x7f0f0075

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    .line 197
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 198
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 199
    const v3, 0x7f0f007e

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    .line 200
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 201
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 202
    const v3, 0x7f0f0079

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    .line 203
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 206
    const v3, 0x7f0f006e

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHTv:Landroid/widget/TextView;

    .line 207
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mHTv:Landroid/widget/TextView;

    const v4, 0x7f090442

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v3, 0x7f0f0072

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSTv:Landroid/widget/TextView;

    .line 209
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSTv:Landroid/widget/TextView;

    const v4, 0x7f090443

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const v3, 0x7f0f007a

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mITv:Landroid/widget/TextView;

    .line 211
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mITv:Landroid/widget/TextView;

    const v4, 0x7f090445

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v3, 0x7f0f0076

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCTv:Landroid/widget/TextView;

    .line 213
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCTv:Landroid/widget/TextView;

    const v4, 0x7f090444

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v3, 0x7f0f006f

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceH:Landroid/widget/ImageView;

    .line 216
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceH:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v3, 0x7f0f0070

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseH:Landroid/widget/ImageView;

    .line 218
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseH:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v3, 0x7f0f0073

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceS:Landroid/widget/ImageView;

    .line 220
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceS:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v3, 0x7f0f0074

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseS:Landroid/widget/ImageView;

    .line 222
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseS:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v3, 0x7f0f007c

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceI:Landroid/widget/ImageView;

    .line 224
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceI:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v3, 0x7f0f007d

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseI:Landroid/widget/ImageView;

    .line 226
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseI:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v3, 0x7f0f0077

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceC:Landroid/widget/ImageView;

    .line 228
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mReduceC:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v3, 0x7f0f0078

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseC:Landroid/widget/ImageView;

    .line 230
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseC:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v3, 0x7f0f0068

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    .line 233
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v3, 0x7f0f0069

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    .line 235
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    const v3, 0x7f0f006a

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    .line 238
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v3, 0x7f0f006b

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    .line 240
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v3, 0x7f0f0065

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCancelBtn:Landroid/widget/Button;

    .line 242
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v3, 0x7f0f0066

    invoke-virtual {p0, v3}, Lcom/android/settings/CustomScreenColor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    .line 244
    iget-object v3, p0, Lcom/android/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->initBtnsStatus()V

    .line 247
    return-void

    .line 185
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 186
    .local v2, "previewUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/settings/CustomScreenColor;->setBackgroundByUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method private previewNewHSIC()V
    .locals 6

    .prologue
    .line 535
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 536
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 537
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 538
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 539
    const-string v1, "CustomScreenColor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewNewHSIC mHueValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSaturationValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContrastValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIntensityValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v1}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    iget v5, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CustomScreenColor"

    const-string v2, "updateHSIC exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private previousOrNewHSCI(Z)V
    .locals 4
    .param p1, "isPrevious"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 570
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 574
    :cond_0
    if-eqz p1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    invoke-direct {p0, v3}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 587
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 582
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 583
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->previewNewHSIC()V

    goto :goto_0
.end method

.method private resotreBackgroundByDefault()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 618
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/settings/CustomScreenColor;->savePreviewKey(Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CustomScreenColor;->canRestorePreview:Z

    .line 620
    return-void
.end method

.method private restoreDefaultHSCI()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mDefaultHueValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mDefaultSaturationValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mDefaultIntensityValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mDefaultContrastValue:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 507
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->setNewBtnHighlight()V

    .line 508
    return-void
.end method

.method private restoreSavedHSCI(Z)V
    .locals 9
    .param p1, "setProgress"    # Z

    .prologue
    .line 511
    const-string v6, "screencolor_preview_name"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 513
    .local v5, "share":Landroid/content/SharedPreferences;
    const-string v6, "hue"

    iget v7, p0, Lcom/android/settings/CustomScreenColor;->mDefaultHueValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 514
    .local v2, "hueValue":I
    const-string v6, "saturation"

    iget v7, p0, Lcom/android/settings/CustomScreenColor;->mDefaultSaturationValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 515
    .local v4, "saturationValue":I
    const-string v6, "intensity"

    iget v7, p0, Lcom/android/settings/CustomScreenColor;->mDefaultIntensityValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 516
    .local v3, "intensityValue":I
    const-string v6, "contrast"

    iget v7, p0, Lcom/android/settings/CustomScreenColor;->mDefaultContrastValue:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 517
    .local v0, "contrastValue":I
    if-eqz p1, :cond_0

    .line 518
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 519
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 520
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 521
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 523
    :cond_0
    const-string v6, "CustomScreenColor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSavedHSCI hueValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " saturationValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contrastValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " intensityValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v6}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 527
    iget-object v6, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v6, v2, v4, v3, v0}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_1
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "CustomScreenColor"

    const-string v7, "updateHSIC exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveHSCI()V
    .locals 4

    .prologue
    .line 591
    iget v0, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    iget v2, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/CustomScreenColor;->saveHSICPreference(IIII)V

    .line 592
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->finish()V

    .line 593
    return-void
.end method

.method private saveHSICPreference(IIII)V
    .locals 4
    .param p1, "h"    # I
    .param p2, "s"    # I
    .param p3, "i"    # I
    .param p4, "c"    # I

    .prologue
    .line 631
    const-string v2, "screencolor_preview_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 632
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 633
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "hue"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 634
    const-string v2, "saturation"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 635
    const-string v2, "intensity"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 636
    const-string v2, "contrast"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 637
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 638
    return-void
.end method

.method private savePreviewKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 624
    const-string v2, "screencolor_preview_name"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/CustomScreenColor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 625
    .local v1, "share":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 626
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencolor_preview_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 627
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 628
    return-void
.end method

.method private selectPicFromGallery2()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 488
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.gallery3d"

    const-string v4, "com.android.gallery3d.app.Wallpaper"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 490
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "aspectX"

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    const-string v2, "aspectY"

    const/16 v3, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 494
    const-string v2, "spotlightX"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 495
    const-string v2, "spotlightY"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 497
    const-string v2, "fromScreenColor"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 498
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 499
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/CustomScreenColor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 500
    return-void
.end method

.method private setActivated(Landroid/widget/SeekBar;Z)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "isActivated"    # Z

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    .line 406
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 427
    :goto_0
    return-void

    .line 408
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mReduceH:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 409
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseH:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 412
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mReduceS:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 413
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseS:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 416
    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mReduceI:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 417
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseI:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 420
    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mReduceC:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 421
    iget-object v1, p0, Lcom/android/settings/CustomScreenColor;->mIncreaseC:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setActivated(Z)V

    goto :goto_0

    .line 406
    :sswitch_data_0
    .sparse-switch
        0x7f0f0071 -> :sswitch_0
        0x7f0f0075 -> :sswitch_1
        0x7f0f0079 -> :sswitch_3
        0x7f0f007e -> :sswitch_2
    .end sparse-switch
.end method

.method private setBackgroundByUri(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 605
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 606
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 607
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 608
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/android/settings/CustomScreenColor;->mRLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/CustomScreenColor;->canRestorePreview:Z

    .line 614
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 609
    :catch_0
    move-exception v2

    .line 610
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v4, "CustomScreenColor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find background drawable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setNewBtnHighlight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 553
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 554
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    const v1, 0x7f020086

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPreviousBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mNewBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 559
    return-void
.end method

.method private showMoreMenus()V
    .locals 4

    .prologue
    .line 657
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mMore:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 658
    .local v1, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 659
    .local v0, "menu":Landroid/view/Menu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f110006

    invoke-virtual {v2, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 661
    iget-boolean v2, p0, Lcom/android/settings/CustomScreenColor;->canRestorePreview:Z

    if-eqz v2, :cond_0

    .line 662
    const v2, 0x7f0f02f7

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 668
    :goto_0
    new-instance v2, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/CustomScreenColor$MyMenuItemclick;-><init>(Lcom/android/settings/CustomScreenColor;Lcom/android/settings/CustomScreenColor$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 669
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 670
    return-void

    .line 664
    :cond_0
    const v2, 0x7f0f02f5

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 665
    const v2, 0x7f0f02f6

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0
.end method

.method private upDownHSCISettingLayout()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 647
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 654
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mScreenColorLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mUpdown:Landroid/widget/ImageView;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 291
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 292
    const-string v0, "CustomScreenColor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 295
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/settings/CustomScreenColor;->changePreviewByData(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 432
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_0
    :pswitch_0
    return-void

    .line 434
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->finish()V

    goto :goto_0

    .line 438
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->saveHSCI()V

    goto :goto_0

    .line 441
    :pswitch_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/CustomScreenColor;->previousOrNewHSCI(Z)V

    goto :goto_0

    .line 444
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/settings/CustomScreenColor;->previousOrNewHSCI(Z)V

    goto :goto_0

    .line 447
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->upDownHSCISettingLayout()V

    goto :goto_0

    .line 450
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->showMoreMenus()V

    goto :goto_0

    .line 453
    :pswitch_7
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMinHueValue:I

    if-le v1, v3, :cond_0

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMinHueValue:I

    goto :goto_1

    .line 456
    :pswitch_8
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mHBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    if-ge v1, v3, :cond_1

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMaxHueValue:I

    goto :goto_2

    .line 459
    :pswitch_9
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMinSaturationValue:I

    if-le v1, v3, :cond_2

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, -0x1

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMinSaturationValue:I

    goto :goto_3

    .line 463
    :pswitch_a
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mSBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    if-ge v1, v3, :cond_3

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMaxSaturationValue:I

    goto :goto_4

    .line 467
    :pswitch_b
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMinIntensityValue:I

    if-le v1, v3, :cond_4

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, -0x1

    :goto_5
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_4
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMinIntensityValue:I

    goto :goto_5

    .line 471
    :pswitch_c
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mIBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    if-ge v1, v3, :cond_5

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMaxIntensityValue:I

    goto :goto_6

    .line 475
    :pswitch_d
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMinContrastValue:I

    if-le v1, v3, :cond_6

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, -0x1

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMinContrastValue:I

    goto :goto_7

    .line 479
    :pswitch_e
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mCBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    if-ge v1, v3, :cond_7

    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    add-int/lit8 v1, v1, 0x1

    :goto_8
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/android/settings/CustomScreenColor;->mMaxContrastValue:I

    goto :goto_8

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0065
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->initPPService()V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 140
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/android/settings/CustomScreenColor;->setContentView(I)V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->initView()V

    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 143
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f090441

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    const/4 v0, 0x2

    const v1, 0x7f090440

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 308
    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 309
    const v0, 0x7f09043e

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 311
    const v0, 0x7f09043f

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 313
    invoke-interface {p1, v3, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 314
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/CustomScreenColor;->mPPServiceConn:Lcom/android/settings/CustomScreenColor$PPServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/CustomScreenColor;->unbindService(Landroid/content/ServiceConnection;)V

    .line 161
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 348
    const/4 v0, 0x1

    .line 350
    :goto_0
    return v0

    .line 333
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/CustomScreenColor;->finish()V

    .line 350
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->selectPicFromGallery2()V

    goto :goto_1

    .line 339
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->selectPicFromGallery2()V

    goto :goto_1

    .line 342
    :sswitch_3
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->resotreBackgroundByDefault()V

    goto :goto_1

    .line 345
    :sswitch_4
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->restoreDefaultHSCI()V

    goto :goto_1

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CustomScreenColor;->restoreSavedHSCI(Z)V

    .line 154
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 319
    iget-boolean v0, p0, Lcom/android/settings/CustomScreenColor;->canRestorePreview:Z

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 321
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 326
    :goto_0
    return v1

    .line 323
    :cond_0
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 324
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/settings/CustomScreenColor;->setNewBtnHighlight()V

    .line 355
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v1

    .line 356
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 383
    :goto_0
    const-string v2, "CustomScreenColor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged mHueValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSaturationValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNewContrastValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIntensityValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    invoke-interface {v2}, Lcom/android/display/IPPService;->getPPStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mPPService:Lcom/android/display/IPPService;

    iget v3, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    iget v4, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    iget v5, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    iget v6, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/display/IPPService;->updateHSIC(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :cond_0
    :goto_1
    return-void

    .line 358
    :sswitch_0
    iput p2, p0, Lcom/android/settings/CustomScreenColor;->mHueValue:I

    .line 360
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mHTv:Landroid/widget/TextView;

    const v3, 0x7f090442

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit16 v6, p2, -0xb4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 363
    :sswitch_1
    iput p2, p0, Lcom/android/settings/CustomScreenColor;->mSaturationValue:I

    .line 365
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mSTv:Landroid/widget/TextView;

    const v3, 0x7f090443

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit16 v6, p2, -0xb4

    mul-int/lit8 v6, v6, 0x64

    int-to-double v6, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 369
    :sswitch_2
    iput p2, p0, Lcom/android/settings/CustomScreenColor;->mContrastValue:I

    .line 371
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mCTv:Landroid/widget/TextView;

    const v3, 0x7f090444

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit16 v6, p2, -0xb4

    mul-int/lit8 v6, v6, 0x64

    int-to-double v6, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 375
    :sswitch_3
    iput p2, p0, Lcom/android/settings/CustomScreenColor;->mIntensityValue:I

    .line 377
    iget-object v2, p0, Lcom/android/settings/CustomScreenColor;->mITv:Landroid/widget/TextView;

    const v3, 0x7f090445

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit16 v6, p2, -0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/CustomScreenColor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CustomScreenColor"

    const-string v3, "updateHSIC exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 356
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0071 -> :sswitch_0
        0x7f0f0075 -> :sswitch_1
        0x7f0f0079 -> :sswitch_2
        0x7f0f007e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/CustomScreenColor;->setActivated(Landroid/widget/SeekBar;Z)V

    .line 398
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/CustomScreenColor;->setActivated(Landroid/widget/SeekBar;Z)V

    .line 402
    return-void
.end method
