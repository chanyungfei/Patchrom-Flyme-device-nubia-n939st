.class Lcom/android/settings_ex/notification/NotificationCenter$3;
.super Ljava/lang/Object;
.source "NotificationCenter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationCenter;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationCenter;

.field final synthetic val$Includetext:Landroid/widget/TextView;

.field final synthetic val$editBtn:Landroid/widget/Button;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationCenter;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    iput-object p2, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$Includetext:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$editBtn:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonview"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 206
    if-eqz p2, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NotificationCenter;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    # getter for: Lcom/android/settings_ex/notification/NotificationCenter;->mAdapter:Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationCenter;->access$200(Lcom/android/settings_ex/notification/NotificationCenter;)Lcom/android/settings_ex/notification/NotificationCenter$NotificationAppAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    # invokes: Lcom/android/settings_ex/notification/NotificationCenter;->loadAppsList()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationCenter;->access$300(Lcom/android/settings_ex/notification/NotificationCenter;)V

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$Includetext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationCenter;->Listrect:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$editBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    # getter for: Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationCenter;->access$100(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Notifysw"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$Includetext:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationCenter;->Listrect:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$editBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationCenter$3;->this$0:Lcom/android/settings_ex/notification/NotificationCenter;

    # getter for: Lcom/android/settings_ex/notification/NotificationCenter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationCenter;->access$100(Lcom/android/settings_ex/notification/NotificationCenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "Notifysw"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
