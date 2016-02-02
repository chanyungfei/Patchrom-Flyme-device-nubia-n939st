.class public Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;
.super Landroid/preference/Preference;
.source "FingerprintSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;
    }
.end annotation


# instance fields
.field private mFirst:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProperties:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchChange:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mProperties:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mFirst:Z

    .line 30
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 31
    return-void
.end method


# virtual methods
.method public getCurrentStatus()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 43
    const v0, 0x7f0f00ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const-string v0, "fingerprint_unlock_keyguard"

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v0, "fingerprint_cold_unlock_keyguard"

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintColdUnlockEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "paramCompoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 54
    const-string v0, "VIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCheckedChanged] key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFirst : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mFirst:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitchChange:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitchChange:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;->onSwitchChange(Ljava/lang/String;Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitchChange:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;

    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;->onSwitchClick(Landroid/view/View;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentStatus(Z)V
    .locals 1
    .param p1, "isCheck"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method public setSwitchChange(Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;)V
    .locals 0
    .param p1, "switchChange"    # Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference;->mSwitchChange:Lcom/android/settings_ex/fingerprint/FingerprintSwitchPreference$SwitchChange;

    .line 73
    return-void
.end method
