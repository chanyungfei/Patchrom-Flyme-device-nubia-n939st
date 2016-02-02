.class public Lcom/android/settings/MySeekBar;
.super Landroid/preference/SeekBarPreference;
.source "MySeekBar.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSuppressionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/MySeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/MySeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/MySeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    iput-object p1, p0, Lcom/android/settings/MySeekBar;->mContext:Landroid/content/Context;

    .line 45
    const v0, 0x7f0400b8

    invoke-virtual {p0, v0}, Lcom/android/settings/MySeekBar;->setLayoutResource(I)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MySeekBar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MySeekBar;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/settings/MySeekBar;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onActivityStop()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 70
    const v3, 0x1020365

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/settings/MySeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 71
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/MySeekBar;->mIconView:Landroid/widget/ImageView;

    .line 72
    const v3, 0x7f0f0192

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/MySeekBar;->mSuppressionTextView:Landroid/widget/TextView;

    .line 74
    iget-object v3, p0, Lcom/android/settings/MySeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_auto_brightness_adj"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 78
    .local v2, "value":F
    iget-object v3, p0, Lcom/android/settings/MySeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 80
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v2

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 82
    .local v1, "progress":I
    iget-object v3, p0, Lcom/android/settings/MySeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "arg1"

    div-int/lit8 v5, v1, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "arg1":I
    iget-object v3, p0, Lcom/android/settings/MySeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 86
    iget-object v3, p0, Lcom/android/settings/MySeekBar;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/settings/MySeekBar$1;

    invoke-direct {v4, p0}, Lcom/android/settings/MySeekBar$1;-><init>(Lcom/android/settings/MySeekBar;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 104
    return-void
.end method
