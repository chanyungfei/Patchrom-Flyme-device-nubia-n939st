.class public Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private final mBatteryBroadcast:Landroid/content/Intent;

.field private mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

.field private mContext:Landroid/content/Context;

.field private mHideLabels:Z

.field private mLabelHeader:Landroid/view/View;

.field private final mStats:Landroid/os/BatteryStats;

.field private statusbar_show_battery_percent:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "batteryBroadcast"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mContext:Landroid/content/Context;

    .line 57
    const v0, 0x7f04009b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 58
    iput-object p2, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    .line 59
    iput-object p3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 79
    const v3, 0x7f0f0020

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    .line 81
    .local v0, "chart":Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    if-nez v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mBatteryBroadcast:Landroid/content/Intent;

    invoke-virtual {v0, v3, v5}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;Landroid/content/Intent;)V

    .line 84
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    .line 96
    :goto_0
    const v3, 0x7f0f0162

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    .line 97
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    const v3, 0x7f0f0161

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->statusbar_show_battery_percent:Landroid/widget/CheckBox;

    .line 101
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->statusbar_show_battery_percent:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference$1;-><init>(Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;)V

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "status_bar_show_battery_percent"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 109
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->statusbar_show_battery_percent:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 116
    :goto_2
    return-void

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 89
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 90
    .local v1, "index":I
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 91
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mChart:Lcom/android/settings_ex/fuelgauge/BatteryHistoryChart;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .end local v1    # "index":I
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_2
    move v3, v4

    .line 97
    goto :goto_1

    .line 113
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->statusbar_show_battery_percent:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public setHideLabels(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    if-eq v0, p1, :cond_0

    .line 68
    iput-boolean p1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mHideLabels:Z

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->mLabelHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
