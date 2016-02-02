.class Lcom/android/settings/fingerprint/AutoInterrpt$1;
.super Landroid/os/UEventObserver;
.source "AutoInterrpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/AutoInterrpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/AutoInterrpt;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/AutoInterrpt;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/fingerprint/AutoInterrpt$1;->this$0:Lcom/android/settings/fingerprint/AutoInterrpt;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/fingerprint/AutoInterrpt$1;->this$0:Lcom/android/settings/fingerprint/AutoInterrpt;

    # getter for: Lcom/android/settings/fingerprint/AutoInterrpt;->misInterrupt:Z
    invoke-static {v0}, Lcom/android/settings/fingerprint/AutoInterrpt;->access$000(Lcom/android/settings/fingerprint/AutoInterrpt;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/fingerprint/AutoInterrpt$1;->this$0:Lcom/android/settings/fingerprint/AutoInterrpt;

    # operator++ for: Lcom/android/settings/fingerprint/AutoInterrpt;->mIntCount:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/AutoInterrpt;->access$108(Lcom/android/settings/fingerprint/AutoInterrpt;)I

    .line 77
    :cond_0
    return-void
.end method
