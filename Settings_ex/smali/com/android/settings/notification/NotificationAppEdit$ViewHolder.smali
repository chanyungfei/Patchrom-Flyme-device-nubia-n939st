.class Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;
.super Ljava/lang/Object;
.source "NotificationAppEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationAppEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field LockscreenCk:Landroid/widget/CheckBox;

.field StatusbarCK:Landroid/widget/CheckBox;

.field icon:Landroid/widget/ImageView;

.field row:Landroid/view/ViewGroup;

.field rowDivider:Landroid/view/View;

.field subtitle:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/NotificationAppEdit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/NotificationAppEdit$1;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/android/settings_ex/notification/NotificationAppEdit$ViewHolder;-><init>()V

    return-void
.end method