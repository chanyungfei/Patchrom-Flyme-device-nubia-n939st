.class public Lcom/android/settings_ex/SdupdateActivity;
.super Landroid/app/Activity;
.source "SdupdateActivity.java"


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field filepath:Ljava/io/File;

.field mActionPath:Ljava/lang/String;

.field mCurrentTime:Ljava/lang/String;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDatalength:I

.field mDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field mLength:I

.field private mList:Landroid/widget/ListView;

.field mMaxlength:I

.field mMeidNum:Ljava/lang/String;

.field mNewestVersion:Ljava/lang/String;

.field mOldVersion:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mProduction:Ljava/lang/String;

.field mRealVersionNum:Ljava/lang/String;

.field mRealVersionNum1:Ljava/lang/String;

.field mRealVersionNum2:Ljava/lang/String;

.field mRealVersionNum3:Ljava/lang/String;

.field mRealVersionNum4:Ljava/lang/String;

.field mStrLength:I

.field private mTel:Landroid/telephony/TelephonyManager;

.field private mTemplateNum:Ljava/lang/String;

.field mTracesPath:Ljava/lang/String;

.field mUnifyVersion:Ljava/lang/String;

.field private mUpdateDir:Ljava/lang/String;

.field private mUpdateFile:Ljava/io/File;

.field mVer:Ljava/lang/String;

.field private mVerLength:I

.field mVersion:Ljava/lang/String;

.field mVersionNum:Ljava/lang/String;

.field mVersionNum1:Ljava/lang/String;

.field mVersionNum2:Ljava/lang/String;

.field mVersionNum3:Ljava/lang/String;

.field mVersionNum4:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mData:Ljava/util/ArrayList;

    .line 71
    const-string v0, "ro.build.sw_internal_version"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mTracesPath:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mTracesPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mVerLength:I

    .line 76
    const-string v0, "0.0.1B01"

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mTemplateNum:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mTemplateNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mDatalength:I

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mTracesPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mMaxlength:I

    .line 80
    iget v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mMaxlength:I

    iget v1, p0, Lcom/android/settings_ex/SdupdateActivity;->mDatalength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mStrLength:I

    .line 81
    iput v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mLength:I

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mTracesPath:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings_ex/SdupdateActivity;->mStrLength:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mVersion:Ljava/lang/String;

    .line 83
    const-string v0, "update.zip"

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mUnifyVersion:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mVersionNum1:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mVersionNum2:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mVersionNum3:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mVersionNum4:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mVersionNum:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mRealVersionNum1:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mRealVersionNum2:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mRealVersionNum3:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mRealVersionNum4:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mRealVersionNum:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mActionPath:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mCurrentTime:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mMeidNum:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mOldVersion:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mNewestVersion:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mProduction:Ljava/lang/String;

    .line 107
    iput-object v3, p0, Lcom/android/settings_ex/SdupdateActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 108
    new-instance v0, Lcom/android/settings_ex/SdupdateActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/SdupdateActivity$1;-><init>(Lcom/android/settings_ex/SdupdateActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SdupdateActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings_ex/SdupdateActivity;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/SdupdateActivity;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/SdupdateActivity;->searchFile(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/SdupdateActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/SdupdateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/SdupdateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mDatalength:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/SdupdateActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mVerLength:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/SdupdateActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mUpdateDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/SdupdateActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/SdupdateActivity;->mUpdateDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/settings_ex/SdupdateActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/SdupdateActivity;->mUpdateFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/SdupdateActivity;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mTel:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/SdupdateActivity;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/SdupdateActivity;
    .param p1, "x1"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/SdupdateActivity;->mTel:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method private init()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mList:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090006

    iget-object v3, p0, Lcom/android/settings_ex/SdupdateActivity;->mData:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/SdupdateActivity;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings_ex/SdupdateActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/SdupdateActivity$3;-><init>(Lcom/android/settings_ex/SdupdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 380
    return-void
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private searchFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/io/File;

    .prologue
    const/4 v7, -0x1

    .line 197
    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 198
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 200
    .local v2, "files":[Ljava/io/File;
    array-length v5, v2

    if-lez v5, :cond_3

    .line 201
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 202
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/SdupdateActivity;->searchFile(Ljava/lang/String;Ljava/io/File;)V

    .line 201
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gt v5, v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v7, :cond_0

    .line 209
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/SdupdateActivity;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 211
    :catch_0
    move-exception v5

    goto :goto_1

    .line 217
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const-string v2, "wangjiaying"

    const-string v3, "wangjiaying  scanning oncreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const v2, 0x7f0400d9

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SdupdateActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings_ex/SdupdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "SDcard"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mActionPath:Ljava/lang/String;

    .line 134
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->dialog:Landroid/app/ProgressDialog;

    .line 135
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings_ex/SdupdateActivity;->mActionPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->filepath:Ljava/io/File;

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mActionPath:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 139
    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 140
    iget-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f090bda

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SdupdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mDialog:Landroid/app/ProgressDialog;

    const v3, 0x7f090bdb

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SdupdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 143
    iget-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 145
    const v2, 0x7f0f01e5

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SdupdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings_ex/SdupdateActivity;->mList:Landroid/widget/ListView;

    .line 147
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/settings_ex/SdupdateActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/SdupdateActivity$2;-><init>(Lcom/android/settings_ex/SdupdateActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 165
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 188
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 194
    return-void
.end method
