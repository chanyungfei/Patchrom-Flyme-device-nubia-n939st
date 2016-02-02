.class Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;
.super Ljava/lang/Object;
.source "ProtectedAccountView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/ProtectedAccountView;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 248
    .local v1, "result":Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 249
    .local v2, "verified":Z
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    # invokes: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v2}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$300(Lcom/android/settings/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    # getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$500(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 263
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "verified":Z
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$300(Lcom/android/settings/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    # getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$500(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 252
    .end local v0    # "e":Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$300(Lcom/android/settings/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    # getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$500(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 255
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$300(Lcom/android/settings/cyanogenmod/ProtectedAccountView;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    # getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$500(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;->this$0:Lcom/android/settings/cyanogenmod/ProtectedAccountView;

    # getter for: Lcom/android/settings/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/settings/cyanogenmod/ProtectedAccountView;->access$500(Lcom/android/settings/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;

    invoke-direct {v5, p0}, Lcom/android/settings/cyanogenmod/ProtectedAccountView$2$1;-><init>(Lcom/android/settings/cyanogenmod/ProtectedAccountView$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    throw v3
.end method
