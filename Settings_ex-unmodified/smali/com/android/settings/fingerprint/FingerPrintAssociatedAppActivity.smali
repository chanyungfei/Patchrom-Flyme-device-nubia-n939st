.class public Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;
.super Landroid/app/Activity;
.source "FingerPrintAssociatedAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;
    }
.end annotation


# static fields
.field private static mAssociateAppClassArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAssociateAppPackageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAssociateStatusArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFingerPrintNameArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FINGERPRINT_NAME_TMP:Ljava/lang/String;

.field private fingerprintAddNew:Landroid/widget/Button;

.field private fingerprintTipMsg:Landroid/widget/TextView;

.field private fingerprintTitle:Landroid/widget/TextView;

.field private fingprintSelectList:Landroid/widget/ListView;

.field private mAdapter:Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;

.field private mRenameDlg:Landroid/app/AlertDialog;

.field private mSwitch:Landroid/widget/Switch;

.field private pManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->showErrorInfo(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppClassArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->FINGERPRINT_NAME_TMP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->isExistName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->renameByKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->initSelectFingPrintList(Z)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppPackageArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->pManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private addNewFingerprint()V
    .locals 4

    .prologue
    .line 352
    invoke-static {p0}, Lcom/android/settings/fingerprint/FingerPrintUtils;->getFingerCount(Landroid/content/Context;)I

    move-result v0

    .line 353
    .local v0, "fingerCount":I
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 354
    const v2, 0x7f090b97

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 361
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings/Settings$FingerPrintEnrollActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 360
    const/16 v2, 0x3ea

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private getIndexByKey(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v0, -0x1

    .line 325
    .local v0, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 328
    return v0
.end method

.method private initSelectFingPrintList(Z)V
    .locals 5
    .param p1, "switchState"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 144
    const-string v0, "VIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initSelectFingPrintList] isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppPackageArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppClassArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateStatusArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    if-eqz p1, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->updateSelectFingerPrintList()V

    .line 154
    :cond_0
    if-eqz p1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintTipMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintTipMsg:Landroid/widget/TextView;

    const v1, 0x7f090bad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintAddNew:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAdapter:Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;->notifyDataSetChanged()V

    .line 172
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintTipMsg:Landroid/widget/TextView;

    const v1, 0x7f090bac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintAddNew:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintTipMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintAddNew:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private isExistName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, "result":Z
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "trimName":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 306
    :cond_0
    return v0
.end method

.method private renameByIndex(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "fpName"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 314
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "fp_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v1, "fp_rename"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    invoke-static {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerPrintUtils;->updateFingerPrintByIndex(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 319
    const v1, 0x7f090b8a

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private renameByKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fpName"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->getIndexByKey(Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, "index":I
    invoke-direct {p0, v0, p2}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->renameByIndex(ILjava/lang/String;)V

    .line 335
    return-void
.end method

.method private showErrorInfo(II)V
    .locals 3
    .param p1, "titleId"    # I
    .param p2, "msgId"    # I

    .prologue
    .line 337
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 348
    return-void
.end method

.method private showFPReNameDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fpName"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->FINGERPRINT_NAME_TMP:Ljava/lang/String;

    .line 245
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 248
    .local v1, "et":Landroid/widget/EditText;
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 251
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;

    .line 293
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 294
    .local v2, "window":Landroid/view/Window;
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 295
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mRenameDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 296
    return-void
.end method

.method private updateSelectFingerPrintList()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;->FINGER_PRINT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 179
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 180
    const-string v0, "VIM"

    const-string v1, "[updateSelectFingerPrintList] cursor is null! just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 209
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v0, "VIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateSelectFingerPrintList] cursor counts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    const-string v0, "VIM"

    const-string v1, "[initFingerPrintList] cursor has no any data! just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 193
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    const-string v0, "fp_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, "fpName":Ljava/lang/String;
    const-string v0, "fp_associated_package_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, "pkgName":Ljava/lang/String;
    const-string v0, "fp_associated_activity_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "clsName":Ljava/lang/String;
    const-string v0, "fp_associated_status"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 199
    .local v11, "state":I
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppPackageArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppClassArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateStatusArray:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 204
    .end local v6    # "clsName":Ljava/lang/String;
    .end local v9    # "fpName":Ljava/lang/String;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "state":I
    :catch_0
    move-exception v8

    .line 205
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "VIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initFingerPrintList] exception! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 232
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_0

    .line 233
    if-eqz p3, :cond_0

    .line 234
    const-string v2, "enroll_result_index"

    const/4 v3, -0x1

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 235
    .local v1, "index":I
    const-string v2, "enroll_result_name"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "fpName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fingerprint_key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->showFPReNameDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v0    # "fpName":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "paramCompoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 136
    const-string v1, "VIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCheckedChanged] isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 138
    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->initSelectFingPrintList(Z)V

    .line 139
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 140
    .local v0, "state":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "associatedSwitchState"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    return-void

    .line 139
    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->addNewFingerprint()V

    .line 228
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v3, 0x7f04005a

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->setContentView(I)V

    .line 69
    const v3, 0x7f090ba4

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->setTitle(I)V

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mFingerPrintNameArray:Ljava/util/ArrayList;

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppPackageArray:Ljava/util/ArrayList;

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateAppClassArray:Ljava/util/ArrayList;

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAssociateStatusArray:Ljava/util/ArrayList;

    .line 76
    const v3, 0x7f0f00ce

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mSwitch:Landroid/widget/Switch;

    .line 77
    const v3, 0x7f0f00d0

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingprintSelectList:Landroid/widget/ListView;

    .line 78
    const v3, 0x7f0f00cf

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintTitle:Landroid/widget/TextView;

    .line 79
    const v3, 0x7f0f00d1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintTipMsg:Landroid/widget/TextView;

    .line 80
    const v3, 0x7f0f00d2

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintAddNew:Landroid/widget/Button;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->pManager:Landroid/content/pm/PackageManager;

    .line 84
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingerprintAddNew:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;-><init>(Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAdapter:Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;

    .line 88
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingprintSelectList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->fingprintSelectList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mAdapter:Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity$FPlistViewAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "associatedSwitchState"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "state":I
    if-ne v1, v4, :cond_0

    move v2, v4

    .line 93
    .local v2, "switchState":Z
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f0f0112

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 215
    .local v1, "fingprintNameTV":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "fingprintName":Ljava/lang/String;
    const-string v3, "VIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onItemClick] fingprintName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "fingerprintName"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 127
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->onBackPressed()V

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "associatedSwitchState"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintAssociatedAppActivity;->initSelectFingPrintList(Z)V

    .line 121
    return-void

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0
.end method
