.class Lcom/android/settings_ex/applications/LockPatternActivity$1;
.super Ljava/lang/Object;
.source "LockPatternActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/LockPatternActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/LockPatternActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/LockPatternActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings_ex/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings_ex/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCreate:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/LockPatternActivity;->mConfirming:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings_ex/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings_ex/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    iget-object v0, v0, Lcom/android/settings_ex/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/LockPatternActivity$1;->this$0:Lcom/android/settings_ex/applications/LockPatternActivity;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
