.class Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$2;
.super Ljava/lang/Object;
.source "LockscreenShortcuts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;

    # getter for: Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;
    invoke-static {v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->access$100(Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;)Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;->getAction(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->onTargetChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->access$200(Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;Ljava/lang/String;)V

    .line 183
    const-string v0, "pyh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$2;->this$0:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;

    # getter for: Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->mActions:Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;
    invoke-static {v2}, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;->access$100(Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts;)Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/settings_ex/cyanogenmod/LockscreenShortcuts$ActionHolder;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    return-void
.end method
