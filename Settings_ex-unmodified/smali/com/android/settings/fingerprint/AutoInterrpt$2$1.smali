.class Lcom/android/settings/fingerprint/AutoInterrpt$2$1;
.super Ljava/lang/Object;
.source "AutoInterrpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/AutoInterrpt$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/AutoInterrpt$2;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/AutoInterrpt$2;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/settings/fingerprint/AutoInterrpt$2$1;->this$1:Lcom/android/settings/fingerprint/AutoInterrpt$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/settings/fingerprint/AutoInterrpt$2$1;->this$1:Lcom/android/settings/fingerprint/AutoInterrpt$2;

    iget-object v0, v0, Lcom/android/settings/fingerprint/AutoInterrpt$2;->this$0:Lcom/android/settings/fingerprint/AutoInterrpt;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/AutoInterrpt;->finishDTVRT()I

    .line 340
    return-void
.end method
