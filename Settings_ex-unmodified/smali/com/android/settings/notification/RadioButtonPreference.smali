.class public Lcom/android/settings/notification/RadioButtonPreference;
.super Landroid/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/notification/RadioButtonPreference$OnClickListener;


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 72
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 73
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 75
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/RadioButtonPreference;->mListener:Lcom/android/settings/notification/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/RadioButtonPreference;->mListener:Lcom/android/settings/notification/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/notification/RadioButtonPreference;)V

    .line 66
    :cond_0
    return-void
.end method
