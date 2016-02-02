.class public Lcom/android/settings_ex/BreathlightSeekBarPreference;
.super Landroid/preference/Preference;
.source "BreathlightSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private debug:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentValue:I

.field private mInterval:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mUnitsLeft:Ljava/lang/String;

.field private mUnitsRight:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/BreathlightSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMaxValue:I

    .line 44
    iput v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mInterval:I

    .line 47
    iget v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMaxValue:I

    iput v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->debug:Z

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/BreathlightSeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMaxValue:I

    .line 44
    iput v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mInterval:I

    .line 47
    iget v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMaxValue:I

    iput v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->debug:Z

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/BreathlightSeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object p1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMaxValue:I

    .line 44
    iput v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mInterval:I

    .line 47
    iget v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMaxValue:I

    iput v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->debug:Z

    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMaxValue:I

    iget v2, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    const v0, 0x7f060049

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BreathlightSeekBarPreference;->setWidgetLayoutResource(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 109
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 110
    .local v2, "oldContainer":Landroid/view/ViewParent;
    const v3, 0x7f0f02e4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 112
    .local v1, "newContainer":Landroid/view/ViewGroup;
    if-eq v2, v1, :cond_1

    .line 113
    if-eqz v2, :cond_0

    .line 114
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "oldContainer":Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 117
    iget-object v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "newContainer":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 127
    iget-object v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 130
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/BreathlightSeekBarPreference;->updateView(Landroid/view/View;)V

    .line 131
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    move-object v0, v1

    .line 99
    check-cast v0, Landroid/widget/LinearLayout;

    .line 100
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    return-object v1
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 2
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 241
    :cond_0
    return-void

    .line 239
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 201
    const/16 v1, 0x32

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 202
    .local v0, "defaultValue":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 154
    iget v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    add-int v1, p2, v3

    .line 156
    .local v1, "newValue":I
    iget v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMaxValue:I

    if-le v1, v3, :cond_1

    .line 157
    iget v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMaxValue:I

    .line 163
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/BreathlightSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 164
    iget v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    iget v4, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 165
    iget-object v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "breath_light_brightness"

    iget v5, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    iget v6, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    :goto_1
    return-void

    .line 158
    :cond_1
    iget v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    if-ge v1, v3, :cond_2

    .line 159
    iget v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    goto :goto_0

    .line 160
    :cond_2
    iget v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mInterval:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mInterval:I

    rem-int v3, v1, v3

    if-eqz v3, :cond_0

    .line 161
    int-to-float v3, v1

    iget v4, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mInterval:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mInterval:I

    mul-int v1, v3, v4

    goto :goto_0

    .line 169
    :cond_3
    iput v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/BreathlightSeekBarPreference;->persistInt(I)Z

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.breathlight_brightness_changed"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "mIntentLed":Landroid/content/Intent;
    const/4 v2, 0x2

    .line 181
    .local v2, "which":I
    const-string v3, "BREATHLIGHT_COLOR"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    const-string v3, "BREATHLIGHT_LEVEL"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    iget-object v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 6
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    iget v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/BreathlightSeekBarPreference;->getPersistedInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    .line 225
    :goto_0
    return-void

    .line 213
    :cond_0
    const/4 v2, 0x0

    .line 215
    .local v2, "temp":I
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 221
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/BreathlightSeekBarPreference;->persistInt(I)Z

    .line 222
    iput v2, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid default value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 190
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/BreathlightSeekBarPreference;->notifyChanged()V

    .line 195
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 231
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mCurrentValue:I

    iget v3, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->mMinValue:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/settings_ex/BreathlightSeekBarPreference;->TAG:Ljava/lang/String;

    const-string v2, "Error updating seek bar preference"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
