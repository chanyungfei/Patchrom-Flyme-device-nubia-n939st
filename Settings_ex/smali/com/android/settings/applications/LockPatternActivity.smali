.class public Lcom/android/settings_ex/applications/LockPatternActivity;
.super Landroid/app/Activity;
.source "LockPatternActivity.java"

# interfaces
.implements Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/LockPatternActivity$UnlockPatternListener;
    }
.end annotation


# instance fields
.field mAccountView:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

.field mCancel:Landroid/widget/Button;

.field mCancelOnClickListener:Landroid/view/View$OnClickListener;

.field mCancelPatternRunnable:Ljava/lang/Runnable;

.field mConfirming:Z

.field mContinue:Landroid/widget/Button;

.field mContinueOnClickListener:Landroid/view/View$OnClickListener;

.field mCreate:Z

.field mItem:Landroid/view/MenuItem;

.field mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field mPatternHash:[B

.field mPatternLockHeader:Landroid/widget/TextView;

.field mRetry:I

.field mRetryPattern:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput v1, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mRetry:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mRetryPattern:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mConfirming:Z

    .line 67
    new-instance v0, Lcom/android/settings_ex/applications/LockPatternActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/LockPatternActivity$1;-><init>(Lcom/android/settings_ex/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lcom/android/settings_ex/applications/LockPatternActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/LockPatternActivity$2;-><init>(Lcom/android/settings_ex/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/android/settings_ex/applications/LockPatternActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/LockPatternActivity$3;-><init>(Lcom/android/settings_ex/applications/LockPatternActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/LockPatternActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/LockPatternActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/LockPatternActivity;->resetPatternState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/LockPatternActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/LockPatternActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/applications/LockPatternActivity;->switchToAccount()V

    return-void
.end method

.method private resetPatternState(Z)V
    .locals 8
    .param p1, "clear"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 207
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pattern_lock_protected_apps"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "pattern":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "recreate_pattern_lock"

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LockPatternActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCreate:Z

    .line 211
    iput-object v7, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mPatternHash:[B

    .line 212
    if-eqz v0, :cond_1

    .line 213
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mPatternHash:[B

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v6, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCreate:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object v4, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0901d0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v2, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCreate:Z

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object v3, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCreate:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0905c0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v2, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LockPatternActivity;->invalidateOptionsMenu()V

    .line 226
    return-void

    :cond_2
    move v2, v3

    .line 208
    goto :goto_0

    :cond_3
    move v4, v3

    .line 216
    goto :goto_1

    :cond_4
    move v2, v5

    .line 217
    goto :goto_2

    :cond_5
    move v3, v5

    .line 219
    goto :goto_3

    .line 220
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0905cd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private switchToAccount()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f0200ae

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mAccountView:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 180
    return-void
.end method

.method private switchToPattern(Z)V
    .locals 4
    .param p1, "reset"    # Z

    .prologue
    const/4 v3, 0x0

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-direct {p0, v3}, Lcom/android/settings_ex/applications/LockPatternActivity;->resetPatternState(Z)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LockPatternActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    const v1, 0x7f020072

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mAccountView:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->clearFocusOnInput()V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mAccountView:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    .line 172
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LockPatternActivity;->setContentView(I)V

    .line 186
    const v0, 0x7f0f014f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mPatternLockHeader:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0f0152

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mContinue:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mContinueOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f0f0151

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mAccountView:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mAccountView:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->setOnNotifyAccountResetCb(Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView$OnNotifyAccountReset;)V

    .line 194
    const v0, 0x7f0f0150

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LockPatternActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 196
    invoke-direct {p0, v2}, Lcom/android/settings_ex/applications/LockPatternActivity;->resetPatternState(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/settings_ex/applications/LockPatternActivity$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/applications/LockPatternActivity$UnlockPatternListener;-><init>(Lcom/android/settings_ex/applications/LockPatternActivity;Lcom/android/settings_ex/applications/LockPatternActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 203
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 131
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mCreate:Z

    if-nez v0, :cond_0

    .line 132
    const v0, 0x7f09009c

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020072

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 137
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mItem:Landroid/view/MenuItem;

    .line 139
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onNotifyAccountReset()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 160
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    return v0

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/LockPatternActivity;->mAccountView:Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;

    invoke-virtual {v1}, Lcom/android/settings_ex/cyanogenmod/ProtectedAccountView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/LockPatternActivity;->switchToPattern(Z)V

    .line 151
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/applications/LockPatternActivity;->switchToAccount()V

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p1, :cond_0

    .line 322
    const/4 v1, 0x0

    .line 336
    :goto_0
    return-object v1

    .line 325
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 326
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 327
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 328
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 329
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 333
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 334
    .local v1, "hash":[B
    goto :goto_0

    .line 335
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 336
    goto :goto_0
.end method
