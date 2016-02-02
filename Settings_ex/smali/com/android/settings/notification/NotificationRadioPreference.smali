.class public Lcom/android/settings_ex/notification/NotificationRadioPreference;
.super Landroid/preference/CheckBoxPreference;
.source "NotificationRadioPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/NotificationRadioPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings_ex/notification/NotificationRadioPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/notification/NotificationRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/notification/NotificationRadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/notification/NotificationRadioPreference;->mListener:Lcom/android/settings_ex/notification/NotificationRadioPreference$OnClickListener;

    .line 21
    const v0, 0x7f0400b9

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/notification/NotificationRadioPreference;->setWidgetLayoutResource(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 47
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, "title":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 50
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationRadioPreference;->mListener:Lcom/android/settings_ex/notification/NotificationRadioPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationRadioPreference;->mListener:Lcom/android/settings_ex/notification/NotificationRadioPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/notification/NotificationRadioPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings_ex/notification/NotificationRadioPreference;)V

    .line 41
    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/android/settings_ex/notification/NotificationRadioPreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/notification/NotificationRadioPreference$OnClickListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationRadioPreference;->mListener:Lcom/android/settings_ex/notification/NotificationRadioPreference$OnClickListener;

    .line 34
    return-void
.end method
