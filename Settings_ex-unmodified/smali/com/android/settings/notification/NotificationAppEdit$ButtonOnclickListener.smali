.class final Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;
.super Ljava/lang/Object;
.source "NotificationAppEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAppEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ButtonOnclickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAppEdit;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/NotificationAppEdit;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/NotificationAppEdit;Lcom/android/settings/notification/NotificationAppEdit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/NotificationAppEdit;
    .param p2, "x1"    # Lcom/android/settings/notification/NotificationAppEdit$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;-><init>(Lcom/android/settings/notification/NotificationAppEdit;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0f013e

    if-ne v3, v4, :cond_2

    .line 159
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;
    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppEdit;->access$100(Lcom/android/settings/notification/NotificationAppEdit;)Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;->getCount()I

    move-result v1

    .line 160
    .local v1, "length":I
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    invoke-virtual {v4}, Lcom/android/settings/notification/NotificationAppEdit;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    const v7, 0x7f0905a6

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationAppEdit;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v4

    # setter for: Lcom/android/settings/notification/NotificationAppEdit;->pd:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/android/settings/notification/NotificationAppEdit;->access$202(Lcom/android/settings/notification/NotificationAppEdit;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 164
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings/notification/NotificationAppEdit;->mAdapter:Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;
    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppEdit;->access$100(Lcom/android/settings/notification/NotificationAppEdit;)Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settings/notification/NotificationAppEdit$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/NotificationAppEdit$AppRow;

    .line 173
    .local v2, "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    iget-boolean v3, v2, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->isStatusbarCK:Z

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppEdit;->access$300(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    :goto_1
    iget-boolean v3, v2, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->islockscreenCk:Z

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppEdit;->access$300(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppEdit;->access$300(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "statusbar"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    # getter for: Lcom/android/settings/notification/NotificationAppEdit;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/notification/NotificationAppEdit;->access$300(Lcom/android/settings/notification/NotificationAppEdit;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/settings/notification/NotificationAppEdit$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "lock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 194
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "row":Lcom/android/settings/notification/NotificationAppEdit$AppRow;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAppEdit$ButtonOnclickListener;->this$0:Lcom/android/settings/notification/NotificationAppEdit;

    invoke-virtual {v3}, Lcom/android/settings/notification/NotificationAppEdit;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 195
    return-void
.end method
