.class public Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;
    }
.end annotation


# static fields
.field private static final BLACKLIST_PROJECTION:[Ljava/lang/String;

.field private static final NUMBER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mBlockCalls:Landroid/widget/CheckBox;

.field private mBlockMessages:Landroid/widget/CheckBox;

.field private mContactPickButton:Landroid/widget/ImageButton;

.field private mEditText:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "phone"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "message"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->NUMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->onDeleteConfirmResult(Z)V

    return-void
.end method

.method private createDialogView(JLandroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "id"    # J
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 146
    .local v6, "activity":Landroid/app/Activity;
    const-string v0, "layout_inflater"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 148
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f04004a

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 150
    .local v9, "view":Landroid/view/View;
    const v0, 0x7f0f00b7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    const v0, 0x7f0f00b8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mContactPickButton:Landroid/widget/ImageButton;

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mContactPickButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$2;-><init>(Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f0f00ba

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    .line 167
    const v0, 0x7f0f00bb

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    .line 169
    if-eqz p3, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string v2, "number"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    const-string v2, "phone"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    const-string v2, "message"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    :cond_1
    return-object v9

    .line 173
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 174
    sget-object v0, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 175
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->BLACKLIST_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 177
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 180
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    :goto_3
    if-eqz v7, :cond_0

    .line 185
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 179
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 180
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 182
    :cond_5
    const-wide/16 p1, -0x1

    goto :goto_3
.end method

.method private getEntryId()J
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static newInstance(J)Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;
    .locals 4
    .param p0, "id"    # J

    .prologue
    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 79
    new-instance v1, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;-><init>()V

    .line 80
    .local v1, "fragment":Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v1
.end method

.method private onDeleteConfirmResult(Z)V
    .locals 5
    .param p1, "confirmed"    # Z

    .prologue
    const/4 v4, 0x0

    .line 133
    if-eqz p1, :cond_0

    .line 134
    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getEntryId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 135
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->dismiss()V

    .line 138
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private updateBlacklistEntry()V
    .locals 6

    .prologue
    .line 200
    iget-object v3, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "number":Ljava/lang/String;
    const/4 v0, 0x0

    .line 202
    .local v0, "flags":I
    const/16 v2, 0x11

    .line 203
    .local v2, "valid":I
    iget-object v3, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    or-int/lit8 v0, v0, 0x1

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    or-int/lit8 v0, v0, 0x10

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v0, v2}, Lcom/android/internal/telephony/util/BlacklistUtils;->addOrUpdate(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090097

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 215
    :cond_2
    return-void
.end method

.method private updateOkButtonState()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 220
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 221
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 225
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 228
    :cond_1
    return-void

    .line 226
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->updateOkButtonState()V

    .line 252
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 247
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 256
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 257
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->NUMBER_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 264
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->updateBlacklistEntry()V

    .line 130
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getEntryId()J

    move-result-wide v2

    .line 91
    .local v2, "id":J
    if-eqz p1, :cond_1

    const-string v5, "blacklist_edit_state"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 94
    .local v1, "dialogState":Landroid/os/Bundle;
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090082

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-direct {p0, v2, v3, v1}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->createDialogView(JLandroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 101
    const v4, 0x7f090084

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogState":Landroid/os/Bundle;
    :cond_1
    move-object v1, v4

    .line 91
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, "dialogState":Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 236
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockCalls:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v1, "message"

    iget-object v2, p0, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->mBlockMessages:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v1, "blacklist_edit_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 239
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 112
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 113
    .local v1, "neutralButton":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment$1;-><init>(Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-direct {p0}, Lcom/android/settings_ex/blacklist/EntryEditDialogFragment;->updateOkButtonState()V

    .line 123
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 243
    return-void
.end method
