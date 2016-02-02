.class public Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;
.super Landroid/widget/LinearLayout;
.source "ProtectedAccountView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;
    }
.end annotation


# instance fields
.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mNotifyAccountResetCb:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "st"    # Landroid/util/AttributeSet;
    .param p3, "ds"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;)Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mNotifyAccountResetCb:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method private asyncCheckPassword()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "login":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 235
    .local v8, "password":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 236
    .local v1, "account":Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->postOnCheckPasswordResult(Z)V

    .line 265
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 241
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v2, "options":Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v4, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$2;-><init>(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;)V

    new-instance v6, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->confirmCredentialsAsUser(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 14
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v10, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.google"

    new-instance v12, Landroid/os/UserHandle;

    iget-object v13, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v13

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v11, v12}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    .line 203
    .local v2, "accounts":[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 204
    .local v4, "bestAccount":Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 205
    .local v5, "bestScore":I
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v0, v3, v7

    .line 206
    .local v0, "a":Landroid/accounts/Account;
    const/4 v9, 0x0

    .line 207
    .local v9, "score":I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 208
    const/4 v9, 0x4

    .line 222
    :cond_0
    :goto_1
    if-le v9, v5, :cond_5

    .line 223
    move-object v4, v0

    .line 224
    move v5, v9

    .line 205
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 209
    :cond_2
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 210
    const/4 v9, 0x3

    goto :goto_1

    .line 211
    :cond_3
    const/16 v10, 0x40

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_0

    .line 212
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v11, 0x40

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 213
    .local v6, "i":I
    if-ltz v6, :cond_0

    .line 214
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "aUsername":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 216
    const/4 v9, 0x2

    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 218
    const/4 v9, 0x1

    goto :goto_1

    .line 225
    .end local v1    # "aUsername":Ljava/lang/String;
    .end local v6    # "i":I
    :cond_5
    if-ne v9, v5, :cond_1

    .line 226
    const/4 v4, 0x0

    goto :goto_2

    .line 229
    .end local v0    # "a":Landroid/accounts/Account;
    .end local v9    # "score":I
    :cond_6
    return-object v4
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$1;-><init>(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method


# virtual methods
.method public clearFocusOnInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 120
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 123
    iget-object v1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->asyncCheckPassword()V

    .line 143
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 90
    const v0, 0x7f0f019d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/LoginFilter$UsernameFilterGeneric;

    invoke-direct {v3}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 92
    const v0, 0x7f0f019e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f0f019f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mOk:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->reset()V

    .line 98
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 130
    return-void
.end method

.method public setOnNotifyAccountResetCb(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->mNotifyAccountResetCb:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;

    .line 113
    return-void
.end method
